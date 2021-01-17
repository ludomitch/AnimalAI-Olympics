import subprocess


def run_ilasp(fpath):
    bashCommand = f"ilasp4 --version=4 {fpath} --restarts -q"
    process = subprocess.Popen(bashCommand, stdout=subprocess.PIPE, shell=True)
    output, error = process.communicate()
    return output

def run():
    success_num = [1,2,3,4,5,10,15,20]
    arenas = ['wall', 'red_maze', 'ramp', 'ymaze3', 'numerosity', 'choice', 'moving']
    policies = {
    	a:{s:"" for s in success_num} for a in arenas
    }
    for s_n in success_num:
        for arena in arenas:
        	res = run_ilasp(f"traces/analysis/{arena}/{s_n}.lp")
        	policies[arena][s_n] = res

        	print(f"{arena}{s_n} done")

    print(policies)
    with open("mp_analysis_individ.txt", "w") as text_file:
        text_file.write(str(policies))

def run1():
    success_num = [1,2,3,4,5,10,15,20]
    policies = {s:"" for s in success_num}
    for s_n in success_num:
    	res = run_ilasp(f"traces/analysis/all/{s_n}.lp")
    	policies[s_n] = res
    	print(res)
    	print(f"{s_n} done")

    print(policies)
    with open("mp_analysis_all.txt", "w") as text_file:
        text_file.write(str(policies))



if __name__ == '__main__':
    run1()
