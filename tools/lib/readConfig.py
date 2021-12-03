import configparser
import os
from tools import pro_dir


def getConfig(section: str, param: str):
    config_path = os.path.join(pro_dir, "config.ini")
    if os.path.isfile(config_path):
        conf = configparser.ConfigParser()
        conf.read(config_path)
        value = conf.get(section, param)
        return value
    else:
        file = open(pro_dir + '\\config.ini', 'w')
        file.close()
        conf = configparser.ConfigParser()
        conf.read(config_path)
        conf.add_section(section)
        conf.set(section, param, 'xxxxx')
        conf.write(open(config_path, 'w+'))
