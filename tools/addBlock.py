import os.path
import json
import xlrd
from . import pro_dir
from tools.lib.readConfig import getConfig

with open(os.path.join(pro_dir, 'templates', 'block_loot_table.txt'), 'r', encoding='utf-8') as f:
    block_template = f.read()
with open(os.path.join(pro_dir, 'templates', 'block_model.txt'), 'r', encoding='utf-8') as fm:
    block_model_template = fm.read()
add_excel_path = os.path.join(pro_dir, getConfig('settings', 'addfile'))
add_block_sheet = getConfig('addfile', 'block')


# noinspection DuplicatedCode
def addblock():
    namespace = getConfig('settings', 'namespace')
    cmd_prefix = getConfig('settings', 'cmd_prefix')

    data = xlrd.open_workbook(add_excel_path)
    table = data.sheet_by_name(add_block_sheet)
    nrows = table.nrows
    for i in range(nrows - 1):
        row = i + 1
        existence = table.cell(row, 6).value  # 判断是否不需要进行写入
        if existence != 'True':
            cmd = table.cell(row, 0).value  # 自定义模型数据
            block_id = table.cell(row, 1).value  # 方块ID
            block_trans_enus = table.cell(row, 2).value  # 方块英文名
            block_trans_zhcn = table.cell(row, 3).value  # 方块简体中文名
            block_trans_zhtw = table.cell(row, 4).value  # 方块繁体中文（台湾）名
            block_trans_zhhk = table.cell(row, 5).value  # 方块繁体中文（香港）名
            haveGui = table.cell(row,11).value  # 方块是否有GUI
            iltd = os.path.join(pro_dir, 'data', namespace, 'loot_tables')  # 方块战利品表位置
            itd = os.path.join(pro_dir, 'assets', namespace, 'lang')  # 方块本地化文件位置
            md = os.path.join(pro_dir, 'assets', namespace, 'models')  # 方块模型文件位置
            imd = os.path.join(md, 'block')  # 方块模型文件位置
            iteu = os.path.join(itd, 'en_us.json')  # 方块本地化文件(英文)
            itzc = os.path.join(itd, 'zh_cn.json')  # 方块本地化文件(简体中文)
            itzt = os.path.join(itd, 'zh_tw.json')  # 方块本地化文件(繁体中文（台湾）)
            itzh = os.path.join(itd, 'zh_hk.json')  # 方块本地化文件(繁体中文（香港）)

            # 判断文件夹/文件是否存在
            if not os.path.isdir(os.path.join(pro_dir, 'data', namespace)):
                os.mkdir(os.path.join(pro_dir, 'data', namespace))
            if not os.path.isdir(os.path.join(pro_dir, 'assets', namespace)):
                os.mkdir(os.path.join(pro_dir, 'assets', namespace))
            if not os.path.isdir(iltd):
                os.mkdir(iltd)
            if not os.path.isdir(itd):
                os.mkdir(itd)
            if not os.path.isdir(md):
                os.mkdir(md)
            if not os.path.isdir(imd):
                os.mkdir(imd)
            if not os.path.isfile(iteu):
                iteuf = open(iteu, 'w', encoding='utf-8')
                iteuf.write('{}')
                iteuf.close()
            if not os.path.isfile(itzc):
                itzcf = open(itzc, 'w', encoding='utf-8')
                itzcf.write('{}')
                itzcf.close()
            if not os.path.isfile(itzt):
                itztf = open(itzt, 'w', encoding='utf-8')
                itztf.write('{}')
                itztf.close()
            if not os.path.isfile(itzh):
                itzhf = open(itzh, 'w', encoding='utf-8')
                itzhf.write('{}')
                itzhf.close()

            # 方块战利品表拼接
            block_loot_table = block_template.format(cmd=cmd, id=block_id, namespace=namespace, cmd_prefix=cmd_prefix)

            #  写入战利品表
            iltdf = open(os.path.join(iltd, f'{block_id}.json'), 'w', encoding='utf-8')
            iltdf.write(block_loot_table)
            iltdf.close()

            # 以读写模式打开本地化文件
            iteuf = open(iteu, 'r+', encoding='utf-8')
            itzcf = open(itzc, 'r+', encoding='utf-8')
            itztf = open(itzt, 'r+', encoding='utf-8')
            itzhf = open(itzh, 'r+', encoding='utf-8')

            # 加载本地化文件
            iteu_json = json.loads(iteuf.read())
            itzc_json = json.loads(itzcf.read())
            itzt_json = json.loads(itztf.read())
            itzh_json = json.loads(itzhf.read())
            iteuf = open(iteu, 'w+', encoding='utf-8')
            itzcf = open(itzc, 'w+', encoding='utf-8')
            itztf = open(itzt, 'w+', encoding='utf-8')
            itzhf = open(itzh, 'w+', encoding='utf-8')

            # 写入本地化文件
            iteu_json['{namespace}.block.{id}.name'.format(namespace=namespace, id=block_id)] = block_trans_enus
            itzc_json['{namespace}.block.{id}.name'.format(namespace=namespace, id=block_id)] = block_trans_zhcn
            itzt_json['{namespace}.block.{id}.name'.format(namespace=namespace, id=block_id)] = block_trans_zhtw
            itzh_json['{namespace}.block.{id}.name'.format(namespace=namespace, id=block_id)] = block_trans_zhhk
            json.dump(iteu_json, iteuf, ensure_ascii=False)
            json.dump(itzc_json, itzcf, ensure_ascii=False)
            json.dump(itzt_json, itztf, ensure_ascii=False)
            json.dump(itzh_json, itzhf, ensure_ascii=False)

            # 写入自定义模型区段
            block_model_father = open(os.path.join(pro_dir, 'assets', 'minecraft', 'models', 'item', 'barrel.json'),
                                      'r', encoding='utf-8')
            itf = json.loads(block_model_father.read())
            try:
                itf_list = itf['overrides']
            except:
                itf.update({'overrides': []})
                itf_list = itf['overrides']
            itf_list.append({
                'predicate': {
                    'custom_model_data': int(f'{cmd_prefix}{cmd}')
                },
                'model': f'{namespace}:block/{block_id}'
            })
            itf['overrides'] = itf_list
            print(itf['overrides'][len(itf['overrides']) - 1])
            block_model_father_last = open(
                os.path.join(pro_dir, 'assets', 'minecraft', 'models', 'item', 'barrel.json'), 'w+',
                encoding='utf-8')
            json.dump(itf, block_model_father_last, ensure_ascii=False)
            block_model_father.close()
            block_model_father_last.close()

            # 模型文件拼接
            had_side = table.cell(row, 7).value
            had_top = table.cell(row, 8).value
            had_bottom = table.cell(row, 9).value
            if had_side == 'True':
                side = block_id + '_side'
                if had_top == 'True':
                    top = block_id + '_top'
                    if had_bottom == 'True':
                        bottom = block_id + '_bottom'
                    else:
                        bottom = block_id + '_top'
                else:
                    bottom = block_id + '_side'
                    top = block_id + '_side'
            else:
                side = block_id
                bottom = block_id
                top = block_id
            block_model = block_model_template.format(side=side, top=top, bottom=bottom, namespace=namespace)
            # 模型文件写入
            imdf = open(os.path.join(imd, f'{block_id}.json'), 'w', encoding='utf-8')
            imdf.write(block_model)
            imdf.close()

            # 写入函数文件
            func_dir = os.path.join(pro_dir, 'data', namespace, 'functions')  # 函数目录
            if not os.path.isdir(func_dir):
                os.mkdir(func_dir)
                os.mkdir(os.path.join(func_dir, 'blocks'))
            if not os.path.isdir(os.path.join(func_dir, 'blocks', block_id)):
                os.mkdir(os.path.join(func_dir, 'blocks', block_id))
            # 放置函数模板
            if haveGui == "True":
                with open(os.path.join(pro_dir, 'templates', 'block_set_mcfun.txt'), 'r', encoding='utf-8') as bsf:
                    set_func_temp = bsf.read()
            else:
                with open(os.path.join(pro_dir, 'templates', 'nogui_block_set_mcfun.txt'), 'r', encoding='utf-8') as bsf:
                    set_func_temp = bsf.read()
            # 玩家操作函数模板
            with open(os.path.join(pro_dir, 'templates', 'block_playerset_mcfun.txt'), 'r', encoding='utf-8') as bpsf:
                playerset_func_temp = bpsf.read()
            # 破坏函数模板
            if haveGui == "True":
                with open(os.path.join(pro_dir, 'templates', 'block_broken_mcfun.txt'), 'r', encoding='utf-8') as bbf:
                    broken_func_temp = bbf.read()
            else:
                with open(os.path.join(pro_dir, 'templates', 'nogui_block_broken_mcfun.txt'), 'r', encoding='utf-8') as bbf:
                    broken_func_temp = bbf.read()

            # 函数拼接
            set_func = set_func_temp.format(namespace=namespace, id=block_id, cmd=cmd, cmd_prefix=cmd_prefix)
            playerset_func = playerset_func_temp.format(namespace=namespace, id=block_id)
            broken_func = broken_func_temp.format(namespace=namespace, id=block_id)

            # 函数写入
            set_mcf = open(os.path.join(func_dir, 'blocks', block_id, 'set.mcfunction'), 'w', encoding='utf-8')
            set_mcf.write(set_func)
            set_mcf.close()
            playerset_mcf = open(os.path.join(func_dir, 'blocks', block_id, 'playerset.mcfunction'), 'w',
                                 encoding='utf-8')
            playerset_mcf.write(playerset_func)
            playerset_mcf.close()
            broken_mcf = open(os.path.join(func_dir, 'blocks', block_id, 'broken.mcfunction'), 'w', encoding='utf-8')
            broken_mcf.write(broken_func)
            broken_mcf.close()

            # 写入主函数
            if haveGui == "True":
                with open(os.path.join(pro_dir, 'templates', 'block_main_mcfun.txt'), 'r', encoding='utf-8') as bmf:
                    main_func_temp = bmf.read()
            else:
                with open(os.path.join(pro_dir, 'templates', 'nogui_block_main_mcfun.txt'), 'r', encoding='utf-8') as bmf:
                    main_func_temp = bmf.read()
            main_func = main_func_temp.format(id=block_id, namespace=namespace)
            main_mcf = open(os.path.join(func_dir, 'blocks', block_id, 'main.mcfunction'), 'w', encoding='utf-8')
            main_mcf.write(main_func)
            main_mcf.close()
