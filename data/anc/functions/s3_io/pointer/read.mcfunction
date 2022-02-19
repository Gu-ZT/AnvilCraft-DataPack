# input: storage temp obj
#       scb offset tmp
# 读取指针指向的数据: 
# {p:256, offset:99} 指向地址为256+99的数据
# 若不存在 obj.offset 读取 scb offset tmp 作为偏移
scoreboard players set #offset tmp 0
execute store result score #offset tmp run data get storage temp obj.offset
execute unless data storage temp obj.offset run scoreboard players operation #offset tmp = offset tmp

execute store result score addr tmp run data get storage temp obj.p
scoreboard players operation addr tmp += #offset tmp
function anc:s3_io/get