import os.path
import json
import xlrd
from . import pro_dir
from tools.lib.readConfig import getConfig

with open(pro_dir + '\\templates\\item_loot_table.txt', 'r', encoding='utf-8') as f:
    item_template = f.read()
with open(pro_dir + '\\templates\\item_model.txt', 'r', encoding='utf-8') as fm:
    item_model_template = fm.read()
add_excel_path = pro_dir + '\\' + getConfig('settings', 'addfile')
add_item_sheet = getConfig('addfile', 'item')


def addItem():
    namespace = getConfig('settings', 'namespace')
    cmd_prefix = getConfig('settings', 'cmd_prefix')

    data = xlrd.open_workbook(add_excel_path)
    table = data.sheet_by_name(add_item_sheet)
    nrows = table.nrows
    for i in range(nrows - 1):
        row = i + 1
        existence = table.cell(row, 6).value  # 判断是否不需要进行写入
        if existence != 'True':
            cmd = table.cell(row, 0).value  # 自定义模型数据
            item_id = table.cell(row, 1).value  # 物品ID
            item_trans_enus = table.cell(row, 2).value  # 物品英文名
            item_trans_zhcn = table.cell(row, 3).value  # 物品简体中文名
            item_trans_zhtw = table.cell(row, 4).value  # 物品繁体中文（台湾）名
            item_trans_zhhk = table.cell(row, 5).value  # 物品繁体中文（香港）名
            iltd = pro_dir + f'\\data\\{namespace}\\loot_tables'  # 物品战利品表位置
            itd = pro_dir + f'\\assets\\{namespace}\\lang'  # 物品本地化文件位置
            md = pro_dir + f'\\assets\\{namespace}\\models'  # 物品模型文件位置
            imd = md + '\\item'  # 物品模型文件位置
            iteu = itd + "\\en_us.json"  # 物品本地化文件(英文)
            itzc = itd + "\\zh_cn.json"  # 物品本地化文件(简体中文)
            itzt = itd + "\\zh_tw.json"  # 物品本地化文件(繁体中文（台湾）)
            itzh = itd + "\\zh_hk.json"  # 物品本地化文件(繁体中文（香港）)

            # 判断文件夹/文件是否存在
            if not os.path.isdir(pro_dir + f'\\data\\{namespace}'):
                os.mkdir(pro_dir + f'\\data\\{namespace}')
            if not os.path.isdir(pro_dir + f'\\assets\\{namespace}'):
                os.mkdir(pro_dir + f'\\assets\\{namespace}')
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

            # 物品战利品表拼接
            item_loot_table = item_template.format(cmd=cmd, id=item_id, namespace=namespace, cmd_prefix=cmd_prefix)

            #  写入战利品表
            iltdf = open(iltd + f'\\{item_id}.json', 'w', encoding='utf-8')
            iltdf.write(item_loot_table)
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
            iteu_json['{namespace}.item.{id}.name'.format(namespace=namespace, id=item_id)] = item_trans_enus
            itzc_json['{namespace}.item.{id}.name'.format(namespace=namespace, id=item_id)] = item_trans_zhcn
            itzt_json['{namespace}.item.{id}.name'.format(namespace=namespace, id=item_id)] = item_trans_zhtw
            itzh_json['{namespace}.item.{id}.name'.format(namespace=namespace, id=item_id)] = item_trans_zhhk
            json.dump(iteu_json, iteuf, ensure_ascii=False)
            json.dump(itzc_json, itzcf, ensure_ascii=False)
            json.dump(itzt_json, itztf, ensure_ascii=False)
            json.dump(itzh_json, itzhf, ensure_ascii=False)

            # 写入自定义模型区段
            item_model_father = open(pro_dir + '\\assets\\minecraft\\models\\item\\firework_star.json', 'r',
                                     encoding='utf-8')
            itf = json.loads(item_model_father.read())
            try:
                itf_list = itf['overrides']
            except:
                itf.update({'overrides': []})
                itf_list = itf['overrides']
            itf_list.append({
                "predicate": {
                    "custom_model_data": int(f"{cmd_prefix}{cmd}")
                },
                "model": f"{namespace}:item/{item_id}"
            })
            itf['overrides'] = itf_list
            print(itf['overrides'][len(itf['overrides']) - 1])
            item_model_father_last = open(pro_dir + '\\assets\\minecraft\\models\\item\\firework_star.json', 'w+',
                                          encoding='utf-8')
            json.dump(itf, item_model_father_last, ensure_ascii=False)
            item_model_father.close()
            item_model_father_last.close()

            # 模型文件拼接
            item_model = item_model_template.format(id=item_id, namespace=namespace)
            # 模型文件写入
            imdf = open(imd + f'\\{item_id}.json', 'w', encoding='utf-8')
            imdf.write(item_model)
            imdf.close()
