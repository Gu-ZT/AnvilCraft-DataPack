clear @s #anc:clear{ancClear:1b}

execute if score @s ancCarrotStickUse matches 1.. if predicate anc:tools/magnet run function anc:items/tools/magnet
execute if score @s ancCarrotStickUse matches 1.. unless predicate anc:tools/magnet run scoreboard players reset @s ancCarrotStickUse
execute if score @s ancBrokenSpawner matches 1.. if score @s ancLevel matches 1.. if predicate anc:tools/silk_touch_2 run xp add @s -1 levels
execute if score @s ancBrokenSpawner matches 1.. run scoreboard players reset @s ancBrokenSpawner
