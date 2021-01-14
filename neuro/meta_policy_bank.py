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


}