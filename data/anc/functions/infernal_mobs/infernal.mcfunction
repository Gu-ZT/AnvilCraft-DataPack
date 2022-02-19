scoreboard players set $max ancRandom 100
scoreboard players set $min ancRandom 0
scoreboard players set @s ancInfernalLevel 0

# 清除storage
data remove storage temp list
data modify storage temp list set value []

# 词条
    execute unless score $ancRookieMode ancConfig matches 1 run function anc:infernal_mobs/entry

# 护甲&武器
    execute if entity @s[type=#anc:mobs_canwepon] run function anc:infernal_mobs/wepon
scoreboard players operation $temp ancInfernalLevel = @s ancInfernalLevel
setblock ~ 319 ~ oak_sign
data modify block ~ 319 ~ Text1 set value '[{"text":"Lv.","color":"red"},{"score":{"name":"$temp","objective":"ancInfernalLevel"},"color":"red"}," ",{"storage":"temp","nbt":"list[0]","interpret":true}," ",{"storage":"temp","nbt":"list[1]","interpret":true}," ",{"storage":"temp","nbt":"list[2]","interpret":true}," ",{"storage":"temp","nbt":"list[3]","interpret":true}," ",{"storage":"temp","nbt":"list[4]","interpret":true}," ",{"storage":"temp","nbt":"list[5]","interpret":true}," ",{"storage":"temp","nbt":"list[6]","interpret":true}," ",{"storage":"temp","nbt":"list[7]","interpret":true}," ",{"storage":"temp","nbt":"list[8]","interpret":true}," ",{"storage":"temp","nbt":"list[9]","interpret":true}]'
data modify entity @s CustomName set from block ~ 319 ~ Text1
setblock ~ 319 ~ air
data modify entity @s CustomNameVisible set value true
tag @s add ancInfernal
