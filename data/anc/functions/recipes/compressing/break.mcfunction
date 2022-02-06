
# 由于是合成，所以不能对每个Item分别执行，应当计数后再召唤
execute if block ~ ~ ~ #minecraft:cauldrons if entity @e[type=minecraft:item,predicate=anc:compressing,distance=..1] align xyz positioned ~.5 ~.5 ~.5 run function anc:recipes/compressing/loot
execute as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:tear_of_the_sea"}}},distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons run function anc:recipes/compressing/tear_of_the_sea_loot
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:8b}},distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons run function anc:recipes/compressing/carft_machine_loot
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dispenser",Count:1b}},distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons run function anc:recipes/compressing/interact_machine_loot
execute run function #anc:recipes/compressing
kill @s
