import os
# 0为读取1为写入
rpath = r'data\s3\functions\io\256x\0'
li = [
    'execute if score #oper tmp matches 0 store success score succ tmp run data modify storage anc:s3_io obj set from storage anc:s3_io 256x.<i>\n',
    'execute if score #oper tmp matches 1 store success score succ tmp run data modify storage anc:s3_io 256x.<i> set from storage anc:s3_io obj'
]
for i in range(0,256):
    tl = map(lambda s: s.replace('<i>',str(i)), li)
    with open(os.path.join(rpath,f'{i}.mcfunction'),'w') as f:
        f.writelines(tl)
