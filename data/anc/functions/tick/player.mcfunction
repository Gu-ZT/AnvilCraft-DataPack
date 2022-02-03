clear @s #anc:clear{ancClear:1b}

execute if score @s ancCarrotStickUse matches 1.. if predicate anc:tools/magnet run function anc:items/tools/magnet
execute if score @s ancCarrotStickUse matches 1.. unless predicate anc:tools/magnet run scoreboard players reset @s ancCarrotStickUse
