    # 头盔
    scoreboard players reset $temp ancInfernalLevel
    loot replace entity @s armor.head loot anc:infernal_mobs/armor/head
    execute if data entity @s ArmorItems[3] store result score $temp ancInfernalLevel run data get entity @s ArmorItems[3].tag.Level 
    scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
    # 胸甲
    scoreboard players reset $temp ancInfernalLevel
    loot replace entity @s armor.chest loot anc:infernal_mobs/armor/chest
    execute if data entity @s ArmorItems[2] store result score $temp ancInfernalLevel run data get entity @s ArmorItems[2].tag.Level 
    scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
    # 护腿
    scoreboard players reset $temp ancInfernalLevel
    loot replace entity @s armor.legs loot anc:infernal_mobs/armor/leg
    execute if data entity @s ArmorItems[1] store result score $temp ancInfernalLevel run data get entity @s ArmorItems[1].tag.Level 
    scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
    # 靴子
    scoreboard players reset $temp ancInfernalLevel
    loot replace entity @s armor.feet loot anc:infernal_mobs/armor/boot
    execute if data entity @s ArmorItems[0] store result score $temp ancInfernalLevel run data get entity @s ArmorItems[0].tag.Level 
    scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
    # 武器
    scoreboard players reset $temp ancInfernalLevel
    loot replace entity @s weapon.mainhand loot anc:infernal_mobs/wepon
    execute if data entity @s HandItems[0] store result score $temp ancInfernalLevel run data get entity @s HandItems[0].tag.Level 
    scoreboard players operation @s ancInfernalLevel += $temp ancInfernalLevel
    