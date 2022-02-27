scoreboard players set $max ancRandom 100
scoreboard players set $min ancRandom 0
scoreboard players set @s ancInfernalLevel 0

# 清除storage
data remove storage anc:temp list
data modify storage anc:temp list set value []

# 词条
    execute unless score $ancRookieMode ancConfig matches 1 run function anc:infernal_mobs/entry

# 护甲&武器
    execute if entity @s[type=#anc:mobs_canwepon] run function anc:infernal_mobs/wepon

# 特殊处理——防止出现0级精英怪[血量翻倍]
    execute if score @s ancInfernalLevel matches 0 run function anc:infernal_mobs/health_double

scoreboard players operation $temp ancInfernalLevel = @s ancInfernalLevel
execute if predicate anc:inoverworld positioned ~ 319 ~ run function anc:infernal_mobs/name
execute unless predicate anc:inoverworld positioned ~ 255 ~ run function anc:infernal_mobs/name

data modify entity @s CustomNameVisible set value true
tag @s add ancInfernal
