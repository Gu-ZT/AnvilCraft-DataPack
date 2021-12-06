import os.path
import json
import xlrd
from . import pro_dir
from .lib.readConfig import getConfig

with open(pro_dir + '\\templates\\ench_mcfun.txt', 'r', encoding='utf-8') as f:
    ench_template = f.read()
    f.close()
with open(pro_dir + '\\templates\\ench_main_mcfun.txt', 'r', encoding='utf-8') as fx:
    ench_main_template = fx.read()
    fx.close()

add_excel_path = pro_dir + '\\' + getConfig('settings', 'addfile')
add_ench_sheet = 'Enchantments'

namespace = 'am'
name_space = 'anc_me'


def addEnch():
    data = xlrd.open_workbook(add_excel_path)
    table = data.sheet_by_name(add_ench_sheet)
    nrows = table.nrows
    for i in range(nrows - 1):
        row = i + 1
        existence = table.cell(row, 4).value  # 判断是否不需要进行写入
        if existence != 'True':
            ench_id = table.cell(row, 1).value
            old_lvl = int(table.cell(row, 2).value)
            lvl = int(table.cell(row, 3).value)
            new_lvl = int(old_lvl + 1)
            main_func = pro_dir + f'\\data\\{name_space}\\functions\\crafting\\main.mcfunction'
            ench_func = pro_dir + f'\\data\\{name_space}\\functions\\crafting\\enchanted_book\\{ench_id}_{new_lvl}.mcfunction'

            main_func_add = open(main_func, 'a+', encoding='utf-8')
            main_func_text = ench_main_template.format(ench_id=ench_id, new_lvl=new_lvl, old_lvl=old_lvl, name_space=name_space)
            main_func_add.write(main_func_text)
            main_func_add.close()

            ench_func_write = open(ench_func, 'w+', encoding='utf-8')
            ench_func_text = ench_template.format(ench_id=ench_id, lvl=lvl, old_lvl=old_lvl, namespace=namespace)
            ench_func_write.write(ench_func_text)
            ench_func_write.close()
