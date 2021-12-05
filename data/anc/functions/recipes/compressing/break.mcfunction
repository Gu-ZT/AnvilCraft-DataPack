execute positioned ~ ~-1 ~ as @e[type=minecraft:item,predicate=anc:compressing,distance=..1] at @s run function anc:recipes/compressing/loot
execute positioned ~ ~-1 ~ as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:tear_of_the_sea"}}},distance=..1] at @s run function anc:recipes/compressing/tear_of_the_sea_loot
execute positioned ~ ~-1 ~ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:8b}},distance=..1] at @s run function anc:recipes/compressing/carft_machine_loot
execute positioned ~ ~-1 ~ run function #anc:recipes/compressing
kill @s
