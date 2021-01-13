from utils import goal_on_platform, danger

class RollingChecks:
    def __init__(self, state, args):
        self.state = state
        self.args = args

class Visible(RollingChecks):
    def __init__(self, state, args):
        super().__init__(state=state, args=args)
        self.obj_id = args
    def run(self):
        if any(i[1]in['goal','goal1'] for i in self.state['obj']):
            return True, f"Success: Object {self.obj_id} now visible"
        return False, f"Object {self.obj_id} still not visible"

class Time(RollingChecks):
    def __init__(self, state, args):
        super().__init__(state=state, args=args)
        self.limit = args
    def run(self):
        t = self.state["micro_step"]
        if t >= self.limit:
            return True, f"Failure: Time out, timestep {t}/{self.limit}"
        return False, f"Timestep {t}/{self.limit}"

class Peaked(RollingChecks):
    def __init__(self, state, args):
        super().__init__(state=state, args=args)
        self.reached = 3
        self.started_ascent = False
        self.static_count = 0
        self.climbing_count = 0
    def run(self):
        vel = self.state['velocity'][1]
        if (self.started_ascent) and not(vel>0.1):
            self.static_count+=1
        elif vel>0.1:# vel>0.1                
            self.static_count = 0
            self.started_ascent = True
            self.climbing_count+=1
        else: # falling
            self.static_count = 0
            self.started_ascent = False
            self.climbing_count = 0
        # print(vel, self.started_ascent, self.climbing_count, self.static_count)

        if self.static_count >= self.reached:
            return True, f"Reached summit."
        return False, f"Still climbing or need to start climbing"

class Fallen(RollingChecks):
    def __init__(self, state, args):
        super().__init__(state=state, args=args)
        self.reached = 5
        self.falling_count = 0
    def run(self):
        vel = self.state['velocity'][1]
        if vel<-0.1:
            self.falling_count+=1

        if self.falling_count >= self.reached:
            return True, f"Fallen."
        return False, f"Hasn't fallen yet"


class Gop(RollingChecks):
    """Goal on Platform"""
    def __init__(self, state, args):
        super().__init__(state=state, args=args)

    def run(self): # Unobstructed view to front
        gop = goal_on_platform(self.state)
        if gop or gop is None:
            return False, "Goal still on platform or no goal in sight"
        return True, "Goal no longer on platform, stop balancing"

class Free(RollingChecks):
    """Goal on Platform"""
    def __init__(self, state, args):
        super().__init__(state=state, args=args)

    def run(self): # Unobstructed view to front
        if danger(self.state):
            return False, "Still dangerous"
        return True, "Danger free"

class Danger(RollingChecks):
    """Goal on Platform"""
    def __init__(self, state, args):
        super().__init__(state=state, args=args)

    def run(self): # Unobstructed view to front
        if danger(self.state):
            return True, "Dangerous"
        return False, "No danger"