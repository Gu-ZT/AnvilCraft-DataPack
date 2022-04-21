clear @s #anc:clear{ancClear:1b}

execute if score @s ancCarrotStickUse matches 1.. if predicate anc:tools/magnet run function anc:items/tools/magnet
execute if score @s ancCarrotStickUse matches 1.. unless predicate anc:tools/magnet run scoreboard players reset @s ancCarrotStickUse
execute if score @s ancBrokenSpawner matches 1.. if score @s ancLevel matches 1.. if predicate anc:tools/silk_touch_2 run xp add @s -1 levels
execute if score @s ancBrokenSpawner matches 1.. run scoreboard players reset @s ancBrokenSpawner
execute if score @s ancPlayerDeath matches 1.. run function anc:handle/death

execute if score $ancSkylandMode ancConfig matches 1 if entity @s[advancements={anc:welcome/uid=true},tag=!ancIs] run function anc_is:handle/join

# 应变之镐
execute if data entity @s Inventory[{Slot:-106b,tag:{dict:["changeable_pickaxe"]}}] run function anc:items/changeable_pickaxe/change
