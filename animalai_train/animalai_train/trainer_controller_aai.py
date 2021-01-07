from typing import Optional

from mlagents.trainers.trainer_controller import TrainerController
from mlagents.trainers.env_manager import EnvManager
from mlagents_envs.timers import timed
from mlagents.trainers.trainer_util import TrainerFactory
from mlagents.trainers.sampler_class import SamplerManager
from animalai_train.meta_curriculum_aai import MetaCurriculumAAI
from mlagents.tf_utils import tf
from mlagents_envs.exception import (
    UnityEnvironmentException,
    UnityCommunicationException,
)

class TrainerControllerAAI(TrainerController):
    def __init__(
        self,
        trainer_factory: TrainerFactory,
        model_path: str,
        summaries_dir: str,
        run_id: str,
        save_freq: int,
        meta_curriculum: Optional[MetaCurriculumAAI],
        train: bool,
        training_seed: int,
    ):
        # we remove the sampler manager as it is irrelevant for AAI
        super().__init__(
            trainer_factory=trainer_factory,
            model_path=model_path,
            summaries_dir=summaries_dir,
            run_id=run_id,
            save_freq=save_freq,
            meta_curriculum=meta_curriculum,
            train=train,
            training_seed=training_seed,
            sampler_manager=SamplerManager(reset_param_dict={}),
            resampling_interval=None,
        )

    @timed
    def _reset_env(self, env: EnvManager) -> None:
        """Resets the environment.

        Returns:
            A Data structure corresponding to the initial reset state of the
            environment.
        """
        new_meta_curriculum_config = (
            self.meta_curriculum.get_config() if self.meta_curriculum else None
        )
        env.reset(config=new_meta_curriculum_config)


    @timed
    def start_learning(self, env_manager: EnvManager) -> None:
        self._create_model_path(self.model_path)
        tf.reset_default_graph()
        global_step = 0
        last_brain_behavior_ids: Set[str] = set()
        try:
            # Initial reset
            self._reset_env(env_manager)
            while self._not_done_training():
                external_brain_behavior_ids = set(env_manager.external_brains.keys())
                new_behavior_ids = external_brain_behavior_ids - last_brain_behavior_ids
                self._create_trainers_and_managers(env_manager, new_behavior_ids)
                last_brain_behavior_ids = external_brain_behavior_ids
                n_steps = self.advance(env_manager)
                for _ in range(n_steps):
                    global_step += 1
                    if global_step!=0 and global_step%800==0:
                        self._reset_env(env_manager)
                        for trainer in self.trainers.values():
                            trainer.end_episode()
                    self.reset_env_if_ready(env_manager, global_step)
                    if self._should_save_model(global_step):
                        self._save_model()

            # Final save Tensorflow model
            if global_step != 0 and self.train_model:
                self._save_model()
        except (KeyboardInterrupt, UnityCommunicationException):
            if self.train_model:
                self._save_model_when_interrupted()
            pass
        if self.train_model:
            self._export_graph()
