# 标记玩家
tag @s add aiTpHomePlayer
# 生成as
summon armor_stand ~ ~ ~ {Tags:["aiTpHome"]}
# 寻找传送点
execute if data entity @s SpawnX run data modify storage anc:temp skyland.x set from entity @s SpawnX
execute if data entity @s SpawnY run data modify storage anc:temp skyland.y set from entity @s SpawnY
execute if data entity @s SpawnZ run data modify storage anc:temp skyland.z set from entity @s SpawnZ
# 传送玩家
execute as @e[tag=aiTpHome] at @s run function anc_is:command/teleport/home/as
