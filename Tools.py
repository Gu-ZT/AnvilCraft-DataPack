import sys

from tools import addItme, addBlock, outJson, mathParticles, pack

tip = '''1.新增物品
2.新增方块
3.生成粒子特效
4.生成MCMOD可导入的JSON
5.导出数据包
0.退出\n'''

argv = sys.argv


def dowhile():
    while True:
        choose = input(tip)
        if choose == '0':
            exit()
        elif choose == '1':
            addItme.addItem()
        elif choose == '2':
            addBlock.addblock()
        elif choose == '3':
            mathParticles.mathParticles()
        elif choose == '4':
            outJson.outJson()
        elif choose == '5':
            pack.pack()
        else:
            pass


if __name__ == '__main__':
    try:
        get = argv[1]
        if get == 'pack':
            pack.pack()
        elif get == 'additem':
            addItme.addItem()
        elif get == 'addblock':
            addBlock.addblock()
        elif get == 'outjson':
            outJson.outJson()
        elif get == 'mathparticles':
            mathParticles.mathParticles()
        else:
            dowhile()
    except:
        dowhile()
