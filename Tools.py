from tools import addItme, addBlock, outJson, mathParticles


tip = '''1.新增物品
2.新增方块
3.生成粒子特效
4.生成MCMOD可导入的JSON
0.退出\n'''
if __name__ == '__main__':
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
        else:
            pass


