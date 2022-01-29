import os.path

import xlrd

from tools import pro_dir
from tools.lib import base64Image
from tools.lib.readConfig import getConfig

add_excel_path = os.path.join(pro_dir, getConfig('settings', 'addfile'))
add_block_sheet = getConfig('addfile', 'block')
add_item_sheet = getConfig('addfile', 'item')


def outJson():
    namespace = getConfig('settings', 'namespace')
    data = xlrd.open_workbook(add_excel_path)
    block_table = data.sheet_by_name(add_block_sheet)
    item_table = data.sheet_by_name(add_item_sheet)
    block_rows = block_table.nrows
    item_rows = item_table.nrows
    out_file = os.path.join(pro_dir, getConfig('outjson', 'file'))
    out_file_write = open(out_file, 'w', encoding='utf-8')
    out_file_write.close()

    for i in range(block_rows - 1):
        block_temp = {"name": "", "englishName": "", "registerName": "", "CreativeTabName": "", "OredictList": [],
                      "maxStackSize": 64, "maxDurability": 1, "smallIcon": "", "largeIcon": "",
                      'type': 'Block'}
        row = i + 1
        block_id = block_table.cell(row, 1).value  # 方块ID
        block_trans_enus = block_table.cell(row, 2).value  # 方块英文名
        block_trans_zhcn = block_table.cell(row, 3).value  # 方块简体中文名
        block_texture_dir = os.path.join(pro_dir, "assets", namespace, "textures", "block")  # 方块贴图文件位置
        had_side = block_table.cell(row, 7).value
        had_top = block_table.cell(row, 8).value
        if block_table.cell(row, 10).value != 'Null':
            block_temp['OredictList'] = [f"{block_table.cell(row, 10).value}"]
        else:
            block_temp.pop('OredictList')
        if had_side == 'True':
            side = block_id + '_side'
            if had_top == 'True':
                top = block_id + '_top'
            else:
                top = block_id + '_side'
        else:
            side = block_id
            top = block_id
        side_texture = os.path.join(block_texture_dir, f"{side}.png")
        top_texture = os.path.join(block_texture_dir, f"{top}.png")
        smallIcon = base64Image.blockIcon(top_texture, side_texture, side_texture)['smallIcon']
        largeIcon = base64Image.blockIcon(top_texture, side_texture, side_texture)['largeIcon']
        block_temp['smallIcon'] = smallIcon
        block_temp['largeIcon'] = largeIcon
        block_temp['name'] = block_trans_zhcn
        block_temp['englishName'] = block_trans_enus
        block_temp['registerName'] = f"{namespace}:{block_id}"
        block_temp['CreativeTabName'] = f"Block"

        out_file_write = open(out_file, 'a+', encoding='utf-8')
        out_file_write.write(str(block_temp).replace("'", '"'))
        out_file_write.write('\n')
        out_file_write.close()

    for i in range(item_rows - 1):
        item_temp = {"name": "", "englishName": "", "registerName": "", "CreativeTabName": "", "OredictList": [],
                     "maxStackSize": 64, "maxDurability": 1, "smallIcon": "", "largeIcon": "",
                     'type': 'Item'}
        row = i + 1
        item_id = item_table.cell(row, 1).value  # 物品ID
        item_trans_enus = item_table.cell(row, 2).value  # 物品英文名
        item_trans_zhcn = item_table.cell(row, 3).value  # 物品简体中文名
        item_texture_dir = os.path.join(pro_dir, "assets", namespace, "textures", "item", f"{item_id}.png")  # 物品贴图文件位置
        if item_table.cell(row, 7).value != 'Null':
            item_temp['OredictList'] = [f"{item_table.cell(row, 7).value}"]
        else:
            item_temp.pop('OredictList')
        smallIcon = base64Image.file_base64(item_texture_dir)['smallIcon']
        largeIcon = base64Image.file_base64(item_texture_dir)['largeIcon']
        item_temp['smallIcon'] = smallIcon
        item_temp['largeIcon'] = largeIcon
        item_temp['name'] = item_trans_zhcn
        item_temp['englishName'] = item_trans_enus
        item_temp['registerName'] = f"{namespace}:{item_id}"
        item_temp['CreativeTabName'] = f"Item"

        out_file_write = open(out_file, 'a+', encoding='utf-8')
        out_file_write.write(str(item_temp).replace("'", '"'))
        out_file_write.write('\n')
        out_file_write.close()
