import json
from os import mkdir
import os.path
from . import pro_dir
from .lib import readConfig
import zipfile


def pack(args: str = 'null'):
    pack_mcmeta = os.path.join(pro_dir, 'pack.mcmeta')
    pmm = json.loads(open(pack_mcmeta, 'r+', encoding='utf-8').read())
    version = pmm['pack']['description'][1]['text']
    version = version[2:]
    name = os.path.join(pro_dir,"out",readConfig.getConfig('settings', 'pack_name').format(version=version, mcv=readConfig.getConfig('settings', 'mcv'))+".zip")
    if args != 'null':
        name = os.path.join(pro_dir,"out",readConfig.getConfig('settings', 'pack_name').format(version=version, mcv=readConfig.getConfig('settings', 'mcv'))+f"-{args}"+".zip")
    out_dir = os.path.join(pro_dir, "out")
    data = os.path.join(pro_dir, 'data')
    assets = os.path.join(pro_dir, 'assets')
    pack_png = os.path.join(pro_dir, 'pack.png')
    license_f = os.path.join(pro_dir, 'LICENSE')

    if not os.path.isdir(out_dir):
        mkdir(out_dir)

    z = zipfile.ZipFile(name, 'w')
    z.write(pack_png, "pack.png")
    z.write(pack_mcmeta, 'pack.mcmeta')
    z.write(license_f, 'LICENSE')
    pre_len = len(os.path.dirname(data))
    for parent, dirnames, filenames in os.walk(data):
        for filename in filenames:
            pathfile = os.path.join(parent, filename)
            arcname = pathfile[pre_len:].strip(os.path.sep)  # 相对路径
            z.write(pathfile, arcname)
    pre_len = len(os.path.dirname(assets))
    for parent, dirnames, filenames in os.walk(assets):
        for filename in filenames:
            pathfile = os.path.join(parent, filename)
            arcname = pathfile[pre_len:].strip(os.path.sep)  # 相对路径
            z.write(pathfile, arcname)
    z.close()
