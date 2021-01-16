mps = {
	0:"""
:~ initiate(explore(V1)).[-1@2, V1]
:~ initiate(rotate).[-1@1]
:~ initiate(interact(V1)).[-1@8, V1]
""",

	1:"""
:~ initiate(avoid).[-1@11]
:~ initiate(explore(V1)).[-1@4, V1]
:~ initiate(rotate).[-1@1]
:~ initiate(interact(V1)).[-1@8, V1]
""",

	2:"""
:~ initiate(interact(V1)).[-1@3, V1]
:~ initiate(explore(V1)).[-1@2, V1]
:~ initiate(balance).[-1@4]
:~ initiate(avoid).[-1@5]
:~ initiate(rotate).[-1@1]
:~ initiate(climb).[-1@6]
""",

	3:"""
:~ initiate(interact(V1)).[-1@3, V1]
:~ initiate(avoid).[-1@4]
:~ initiate(explore(V1)).[-1@2, V1]
:~ initiate(balance).[-1@5]
:~ initiate(rotate).[-1@1]
:~ initiate(climb).[-1@7]
:~ bigger(V1,V2), initiate(interact(V1)).[-1@8, V1, V2]
""",

	4:"""
:~ initiate(climb).[-1@9]
:~ initiate(collect).[-1@8]
:~ initiate(balance).[-1@6]
:~ initiate(avoid).[-1@4]
:~ initiate(interact(V1)).[-1@3, V1]
:~ initiate(explore(V1)).[-1@2, V1]
:~ initiate(rotate).[-1@1]
:~ bigger(V1,V2), initiate(interact(V1)).[-1@7, V1, V2]
:~ initiate(drop(V1)), more_goals(V1).[-1@10, V1]
""",

	5:"""
:~ initiate(explore(V1)).[-1@2, V1]
:~ initiate(interact(V1)).[-1@4, V1]
:~ initiate(avoid).[-1@5]
:~ initiate(climb).[-1@10]
:~ initiate(balance).[-1@6]
:~ initiate(rotate).[-1@1]
:~ initiate(collect).[-1@8]
:~ bigger(V1,V2), initiate(interact(V1)).[-1@7, V1, V2]
:~ initiate(drop(V1)), more_goals(V1).[-1@11, V1]
:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@9, V1, V2]
""",

	6:"""
:~ bigger(V1,V2), initiate(interact(V1)).[-1@12, V1, V2]
:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@11, V1, V2]
:~ danger, initiate(observe), on(agent,platform).[-1@9]
:~ initiate(drop(V1)), more_goals(V1).[-1@8, V1]
:~ initiate(collect), not lava.[-1@7]
:~ initiate(climb).[-1@6]
:~ initiate(explore(V1)), occludes(V1).[-1@5, V1]
:~ initiate(balance).[-1@4]
:~ danger, initiate(avoid).[-1@3]
:~ initiate(interact(V1)).[-1@2, V1]
:~ initiate(rotate).[-1@1]
""",
7:"""
:~ initiate(climb).[-1@11]
:~ initiate(interact(V1)).[-1@2, V1]
:~ initiate(collect).[-1@4]
:~ initiate(balance).[-1@5]
:~ initiate(rotate).[-1@1]
:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@8, V1, V2]
:~ initiate(explore(V2)), occludes(V1).[-1@7, V1, V2]
:~ danger, initiate(observe).[-1@6]
:~ bigger(V1,V2), initiate(interact(V1)).[-1@10, V1, V2]
:~ initiate(drop(V1)), more_goals(V1).[-1@12, V1]
:~ danger, initiate(avoid), not on(agent,platform).[-1@9]
""",
	101:"""
:~ initiate(climb).[-1@10]
:~ danger, initiate(observe), on(agent,platform).[-1@10]
:~ initiate(drop(V1)), more_goals(V1).[-1@9, V1]
:~ initiate(collect), not lava.[-1@8]
:~ initiate(interact(V1)), not danger, not on(goal,platform).[-1@7, V1]
:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@6, V1, V2]
:~ initiate(explore(V1)), occludes(V1).[-1@5, V1]
:~ initiate(avoid).[-1@4]
:~ initiate(balance).[-1@3]
:~ initiate(rotate).[-1@2]
:~ bigger(V1,V2), initiate(interact(V1)).[-1@1, V1, V2]
""",
21: ':~ initiate(climb).[-1@7]\n:~ initiate(collect).[-1@4]\n:~ initiate(balance).[-1@3]\n:~ initiate(avoid).[-1@2]\n:~ initiate(interact(V1)).[-1@1, V1]\n:~ danger, initiate(observe).[-1@10]\n:~ initiate(explore(V1)), occludes(V1).[-1@5, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@11, V1, V2]\n\n',
 22: ':~ initiate(balance).[-1@7]\n:~ initiate(collect).[-1@5]\n:~ initiate(avoid).[-1@4]\n:~ initiate(climb).[-1@3]\n:~ initiate(interact(V1)).[-1@2, V1]\n:~ initiate(rotate).[-1@1]\n:~ initiate(explore(V1)), on(agent,platform).[-1@8, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@6, V1, V2]\n:~ danger, initiate(observe), on(agent,platform).[-1@10]\n\n',
 23: ':~ initiate(collect).[-1@9]\n:~ initiate(explore(V1)).[-1@3, V1]\n:~ initiate(balance).[-1@2]\n:~ initiate(climb).[-1@10]\n:~ initiate(rotate).[-1@1]\n:~ initiate(avoid), not on(agent,platform).[-1@8]\n:~ initiate(interact(V1)), not on(agent,platform).[-1@7, V1]\n:~ danger, initiate(observe).[-1@6]\n:~ initiate(explore(V1)), not occludes(V1).[-1@5, V1]\n:~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n',
 25: ':~ initiate(rotate).[-1@2]\n:~ initiate(interact(V1)).[-1@3, V1]\n:~ initiate(balance).[-1@4]\n:~ initiate(climb).[-1@9]\n:~ initiate(collect).[-1@6]\n:~ bigger(V1,V2), initiate(interact(V1)).[-1@8, V1, V2]\n:~ danger, initiate(observe).[-1@7]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@1, V1, V2]\n:~ initiate(explore(V1)), on(agent,platform).[-1@5, V1]\n:~ initiate(avoid), not on(agent,platform).[-1@10]\n\n',
 30: ':~ initiate(collect).[-1@6]\n:~ initiate(climb).[-1@4]\n:~ initiate(avoid).[-1@3]\n:~ initiate(interact(V1)).[-1@2, V1]\n:~ initiate(observe).[-1@1]\n:~ initiate(explore(V2)), occludes(V1).[-1@9, V1, V2]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@8, V1, V2]\n:~ initiate(balance), not danger.[-1@7]\n:~ bigger(V1,V2), initiate(interact(V1)).[-1@10, V1, V2]\n:~ initiate(observe), on(agent,platform).[-1@5]\n:~ initiate(drop(V1)), more_goals(V1).[-1@11, V1]\n\n',
 35: ':~ initiate(balance).[-1@5]\n:~ initiate(climb).[-1@4]\n:~ initiate(interact(V1)).[-1@3, V1]\n:~ initiate(collect).[-1@1]\n:~ initiate(avoid), not on(agent,platform).[-1@9]\n:~ initiate(drop(V1)), more_goals(V1).[-1@8, V1]\n:~ danger, initiate(observe).[-1@6]\n:~ initiate(explore(V1)), occludes(V1).[-1@10, V1]\n:~ bigger(V1,V2), initiate(interact(V1)).[-1@11, V1, V2]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n',
 40: ':~ initiate(climb).[-1@7]\n:~ initiate(explore(V1)).[-1@5, V1]\n:~ initiate(balance).[-1@4]\n:~ initiate(rotate).[-1@3]\n:~ initiate(collect).[-1@1]\n:~ initiate(drop(V1)), more_goals(V1).[-1@9, V1]\n:~ bigger(V1,V2), initiate(interact(V1)).[-1@8, V1, V2]\n:~ initiate(interact(V1)), not on(agent,platform).[-1@6, V1]\n:~ danger, initiate(observe).[-1@10]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n:~ danger, initiate(avoid), not on(agent,platform).[-1@11]\n\n'



}

success_analysis = {'wall': {5: b':~ initiate(rotate).[-1@1]\n:~ initiate(explore(V1)).[-1@2, V1]\n:~ initiate(interact(V1)).[-1@4, V1]\n\n', 10: b':~ initiate(interact(V1)).[-1@5, V1]\n:~ initiate(rotate).[-1@3]\n:~ initiate(explore(V1)).[-1@4, V1]\n\n', 15: b':~ initiate(interact(V1)).[-1@5, V1]\n:~ initiate(rotate).[-1@3]\n:~ initiate(explore(V1)).[-1@4, V1]\n\n', 20: b':~ initiate(rotate).[-1@2]\n:~ initiate(interact(V1)).[-1@4, V1]\n\n'}, 'red_maze': {5: b':~ initiate(avoid).[-1@1]\n\n', 10: b':~ initiate(avoid).[-1@1]\n\n', 15: b':~ initiate(avoid).[-1@1]\n\n', 20: b':~ initiate(avoid).[-1@1]\n\n'}, 'ramp': {5: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 10: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 15: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n', 20: b':~ initiate(balance).[-1@1]\n:~ initiate(climb).[-1@4]\n\n'}, 'ymaze3': {5: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n', 10: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n', 15: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n', 20: b':~ bigger(V1,V2), initiate(interact(V1)).[-1@4, V1, V2]\n\n'}, 'numerosity': {5: b':~ initiate(collect).[-1@4]\n\n', 10: b':~ initiate(collect).[-1@2]\n:~ initiate(observe).[-1@4]\n:~ initiate(drop(V1)), more_goals(V1).[-1@5, V1]\n\n', 15: b':~ initiate(collect).[-1@1]\n:~ initiate(drop(V1)), more_goals(V1).[-1@4, V1]\n\n', 20: b':~ initiate(rotate).[-1@2]\n:~ initiate(collect).[-1@1]\n:~ initiate(drop(V1)), more_goals(V1).[-1@4, V1]\n\n'}, 'choice': {5: b':~ initiate(interact(V1)).[-1@4, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n', 10: b':~ initiate(interact(V1)).[-1@4, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n', 15: b':~ initiate(interact(V1)).[-1@4, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n', 20: b':~ initiate(interact(V1)).[-1@4, V1]\n:~ initiate(explore(V1)), occludes_more(V1,V2).[-1@2, V1, V2]\n\n'}, 'moving': {5: b':~ initiate(observe).[-1@1]\n:~ initiate(interact(V1)), not danger.[-1@3, V1]\n:~ initiate(explore(V1)), occludes(V1).[-1@2, V1]\n\n', 10: b':~ initiate(observe).[-1@3]\n:~ initiate(interact(V1)), not danger.[-1@4, V1]\n:~ initiate(explore(V2)), occludes(V1).[-1@5, V1, V2]\n\n', 15: b':~ initiate(observe).[-1@3]\n:~ initiate(interact(V1)), not danger.[-1@4, V1]\n:~ initiate(explore(V2)), occludes(V1).[-1@5, V1, V2]\n\n', 20: b':~ initiate(observe).[-1@1]\n:~ initiate(explore(V1)).[-1@2, V1]\n:~ initiate(interact(V1)).[-1@3, V1]\n:~ danger, initiate(observe).[-1@4]\n\n'}}

# python3 mp_test.py -n 0 -m 0 &
# python3 mp_test.py -n 0 -m 1 &
# python3 mp_test.py -n 0 -m 2 &
# python3 mp_test.py -n 0 -m 3 &
# python3 mp_test.py -n 0 -m 4 &
# python3 mp_test.py -n 0 -m 5 &
# python3 mp_test.py -n 0 -m 6 &
