# 参数:(multi.lo16=58989) (multi.lo32=-554899859) (multi.hi32=384748)
# 常量:(1s=65536)
scoreboard players set #multi.lo16 ancValue 58989
scoreboard players set #multi.lo32 ancValue -554899859
scoreboard players set #multi.hi32 ancValue 384748
scoreboard players set #1s ancValue 65536
execute as @e[sort=random,limit=1] run function anc:handle/random/init_as_r
