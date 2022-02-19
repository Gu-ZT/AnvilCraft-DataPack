scoreboard players set $max ancRandom 100
scoreboard players set $min ancRandom 0
scoreboard players set @s ancInfernalLevel 0

# 清除storage
data remove storage temp list
data modify storage temp list set value []

# 词条
    # 黑暗
    execute unless score $ancRookieMode ancConfig matches 1 run function anc:handle/random
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run tag @s add inf_dark
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run scoreboard players add @s ancInfernalLevel 10
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run data modify storage temp list append value '{"text":"黑暗","color":"black"}'
    # 生锈
    execute unless score $ancRookieMode ancConfig matches 1 run function anc:handle/random
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run tag @s add inf_rust
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run scoreboard players add @s ancInfernalLevel 15
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run data modify storage temp list append value '{"text":"生锈","color":"gold"}'
    # 粘性
    execute unless score $ancRookieMode ancConfig matches 1 run function anc:handle/random
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run tag @s add inf_sticky
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run scoreboard players add @s ancInfernalLevel 20
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run data modify storage temp list append value '{"text":"粘性","color":"green"}'
    # 织网
    execute unless score $ancRookieMode ancConfig matches 1 run function anc:handle/random
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run tag @s add inf_weaving_net
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run scoreboard players add @s ancInfernalLevel 12
    execute unless score $ancRookieMode ancConfig matches 1 if score $output ancRandom matches ..20 run data modify storage temp list append value '{"text":"织网","color":"white"}'

# 护甲&武器
    # 头盔
    scoreboard players reset $temp ancInfernalLevel
    execute if entity @s[type=#anc:mobs_canwepon] run loot replace entity @s armor.head loot anc:infernal_mobs/armor/head
    execute if entity @s[type=#anc:mobs_canwepon] if data entity @s ArmorItems[3] store result score $temp ancInfernalLevel run data get entity @s ArmorItems[3].tag.Level 
    execute if entity @s[type=#anc:mobs_canwepon] run scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
    # 胸甲
    scoreboard players reset $temp ancInfernalLevel
    execute if entity @s[type=#anc:mobs_canwepon] run loot replace entity @s armor.chest loot anc:infernal_mobs/armor/chest
    execute if entity @s[type=#anc:mobs_canwepon] if data entity @s ArmorItems[2] store result score $temp ancInfernalLevel run data get entity @s ArmorItems[2].tag.Level 
    execute if entity @s[type=#anc:mobs_canwepon] run scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
    # 护腿
    scoreboard players reset $temp ancInfernalLevel
    execute if entity @s[type=#anc:mobs_canwepon] run loot replace entity @s armor.legs loot anc:infernal_mobs/armor/leg
    execute if entity @s[type=#anc:mobs_canwepon] if data entity @s ArmorItems[1] store result score $temp ancInfernalLevel run data get entity @s ArmorItems[1].tag.Level 
    execute if entity @s[type=#anc:mobs_canwepon] run scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
    # 靴子
    scoreboard players reset $temp ancInfernalLevel
    execute if entity @s[type=#anc:mobs_canwepon] run loot replace entity @s armor.feet loot anc:infernal_mobs/armor/boot
    execute if entity @s[type=#anc:mobs_canwepon] if data entity @s ArmorItems[0] store result score $temp ancInfernalLevel run data get entity @s ArmorItems[0].tag.Level 
    execute if entity @s[type=#anc:mobs_canwepon] run scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
    # 武器
    scoreboard players reset $temp ancInfernalLevel
    execute if entity @s[type=#anc:mobs_canwepon] run loot replace entity @s weapon.mainhand loot anc:infernal_mobs/wepon
    execute if entity @s[type=#anc:mobs_canwepon] if data entity @s HandItems[0] store result score $temp ancInfernalLevel run data get entity @s HandItems[0].tag.Level 
    execute if entity @s[type=#anc:mobs_canwepon] run scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
scoreboard players operation $temp ancInfernalLevel = @s ancInfernalLevel
setblock ~ 319 ~ oak_sign
data modify block ~ 319 ~ Text1 set value '[{"text":"Lv.","color":"red"},{"score":{"name":"$temp","objective":"ancInfernalLevel"},"color":"red"}," ",{"storage":"temp","nbt":"list[0]","interpret":true}," ",{"storage":"temp","nbt":"list[1]","interpret":true}," ",{"storage":"temp","nbt":"list[2]","interpret":true}," ",{"storage":"temp","nbt":"list[3]","interpret":true}," ",{"storage":"temp","nbt":"list[4]","interpret":true}," ",{"storage":"temp","nbt":"list[5]","interpret":true}," ",{"storage":"temp","nbt":"list[6]","interpret":true}," ",{"storage":"temp","nbt":"list[7]","interpret":true}," ",{"storage":"temp","nbt":"list[8]","interpret":true}," ",{"storage":"temp","nbt":"list[9]","interpret":true}]'
data modify entity @s CustomName set from block ~ 319 ~ Text1
setblock ~ 319 ~ air
data modify entity @s CustomNameVisible set value true
tag @s add ancInfernal
