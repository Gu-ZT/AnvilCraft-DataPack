import os
from math import cos, sin

from . import pro_dir
from tools.lib.readConfig import getConfig


def mathParticles():
    mpf_dir = os.path.join(pro_dir, getConfig('settings', 'mpf_dir'))
    if not os.path.isdir(mpf_dir):
        os.mkdir(mpf_dir)
    mpf_list = os.listdir(mpf_dir)
    for i in range(len(mpf_list)):
        mpf(os.path.join(mpf_dir, str(mpf_list[i])))


def mpf(mpf_path: str):
    try:
        namespace = getConfig('settings', 'namespace')
        with open(mpf_path, 'r', encoding='utf-8') as mpfr:
            mpf_text = mpfr.read()
            mpfr.close()
            mpf_line = mpf_text.split('\n')
        for i in range(len(mpf_line)):
            index = len(mpf_line) - i - 1
            if mpf_line[index][0] == '#':
                del mpf_line[index]
        frame = len(mpf_line) - 1
        mpf_dir = os.path.join(pro_dir, 'data', namespace, 'functions', 'mpf', mpf_line[0])
        print(f'正在生成：{mpf_dir}')

        if not os.path.isdir(os.path.join(pro_dir, 'data')):
            os.mkdir(os.path.join(pro_dir, 'data'))
        if not os.path.isdir(os.path.join(pro_dir, 'data', namespace)):
            os.mkdir(os.path.join(pro_dir, 'data', namespace))
        if not os.path.isdir(os.path.join(pro_dir, 'data', namespace, 'functions')):
            os.mkdir(os.path.join(pro_dir, 'data', namespace, 'functions'))
        if not os.path.isdir(os.path.join(pro_dir, 'data', namespace, 'functions', 'mpf')):
            os.mkdir(os.path.join(pro_dir, 'data', namespace, 'functions', 'mpf'))
        if not os.path.isdir(os.path.join(pro_dir, 'data', namespace, 'functions', 'mpf', mpf_line[0])):
            os.mkdir(os.path.join(pro_dir, 'data', namespace, 'functions', 'mpf', mpf_line[0]))

        with open(os.path.join(pro_dir, 'data', namespace, 'functions', 'mpf', 'load.mcfunction'), 'w+',
                  encoding='utf-8') as load:
            load.write(f'scoreboard objectives add {namespace}MpfFrame dummy\n')

        tick_function_file = os.path.join(pro_dir, 'data', namespace, 'functions', 'mpf', 'tick.mcfunction')
        with open(tick_function_file, 'a', encoding='utf-8') as funcadd:
            funcadd.write(
                f'execute as @e[tag={namespace}_mpf] if score @s {namespace}MpfFrame matches 1.. run scoreboard players add @s {namespace}MpfFrame 1\n')
            funcadd.write(
                f'execute as @e[tag={namespace}_{mpf_line[0]}] at @s run function {namespace}:mpf/{mpf_line[0]}/step\n')
        main_function_file = os.path.join(mpf_dir, 'main.mcfunction')
        with open(main_function_file, 'a', encoding='utf-8') as funcadd:
            funcadd.write(
                f'summon area_effect_cloud ~ ~ ~ {{Tags:["{namespace}_mpf","{namespace}_{mpf_line[0]}"],Duration:10000}}\n')
            funcadd.write(
                f'execute as @e[type=area_effect_cloud,sort=nearest,tag={namespace}_mpf] at @s run scoreboard players add @s {namespace}MpfFrame 1\n')
            funcadd.write(
                f'execute as @e[type=area_effect_cloud,sort=nearest,tag={namespace}_mpf] at @s run function {namespace}:mpf/{mpf_line[0]}/step\n')
        step_function_file = os.path.join(mpf_dir, 'step.mcfunction')
        for i in range(frame):
            mpf_ = mpf_line[i + 1].split(' ')
            mpfType = mpf_[0]
            if mpfType == 'cir':
                output = circular(float(mpf_[1]), float(mpf_[2]), float(mpf_[3]), str(mpf_[5]))
            else:
                output = []
                pass
            particles_type = mpf_[4]
            function_file = os.path.join(mpf_dir, f'{i}.mcfunction')
            step_func_add = f'execute if score @s {namespace}MpfFrame matches {i + 1} run function {namespace}:mpf/{mpf_line[0]}/{i}\n'
            print('{}%'.format(round((i + 1) / frame, 4) * 100))
            for j in range(len(output)):
                pos = output[j]
                x = pos[0]
                y = pos[1]
                z = pos[2]
                function_add = f'particle {particles_type} ~{x} ~{y} ~{z}\n'
                with open(function_file, 'a', encoding='utf-8') as funcadd:
                    funcadd.write(function_add)
            with open(step_function_file, 'a', encoding='utf-8') as funcadd:
                funcadd.write(step_func_add)
        print("BUILD SUCCESSFUL")
        with open(step_function_file, 'a', encoding='utf-8') as funcadd:
            funcadd.write(f"execute if score @s {namespace}MpfFrame matches {frame + 1}.. run kill @s\n")
    except:
        print("BUILD FAILED")


def circular(r: float, high: float = 0.0, stepping: float = 0.1, orientation: str = 'xz'):
    pos = []
    for i in range(int(360 // stepping)):
        a = r * cos(i * stepping)
        c = r * sin(i * stepping)
        a = round(a, 3)
        b = round(high, 3)
        c = round(c, 3)
        if [a, b, c] != [a, b, -c]:
            pos.append([a, b, -c])
        if orientation == 'xz':
            x = a
            y = b
            z = c
        elif orientation == 'xy':
            x = a
            y = c
            z = b
        elif orientation == 'yz':
            x = b
            y = a
            z = c
        else:
            x = a
            y = b
            z = c
        pos.append([x, y, z])
    return pos
