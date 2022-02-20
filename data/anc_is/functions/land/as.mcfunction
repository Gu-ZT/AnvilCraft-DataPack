# 步进
function anc_is:land/step

# 传送
execute store result entity @s Pos[0] double 1 run scoreboard players get $real_x aiValue
data modify entity @s Pos[1] set value 64d
execute store result entity @s Pos[2] double 1 run scoreboard players get $real_z aiValue

execute at @s run tp @s ~0.5 ~ ~0.5

# 存入储存空间
data modify storage anc:s3_io obj set value {}
scoreboard players operation addr tmp = @a[tag=non_is,limit=1] ancUid
data modify storage anc:s3_io obj.skyland.Pos set from entity @s Pos
function anc:s3_io/set

# 生成岛屿
execute at @s run function anc_is:land/spawn_land

# 传送玩家
tp @a[tag=non_is,limit=1] @s
spawnpoint @a[tag=non_is,limit=1] ~ ~ ~
tag @a[tag=non_is,limit=1] remove non_is

#清除aec
kill @s

