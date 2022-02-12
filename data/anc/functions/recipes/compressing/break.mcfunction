# 读取执行上限
scoreboard players operation #exe_count ancValue = $ancProcessingCount ancConfig

execute if score #exe_count ancValue matches 1.. align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #minecraft:cauldrons if entity @e[type=minecraft:item,predicate=anc:recipes/compressing,distance=..1] run function anc:recipes/compressing/loot
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:tear_of_the_sea"}}},distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons run function anc:recipes/compressing/tear_of_the_sea_loot
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:8b}},distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons run function anc:recipes/compressing/carft_machine_loot
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dispenser",Count:1b}},distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons run function anc:recipes/compressing/interact_machine_loot
function #anc:recipes/compressing
kill @s
