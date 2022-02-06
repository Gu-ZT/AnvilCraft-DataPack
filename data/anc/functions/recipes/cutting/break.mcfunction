execute unless block ~ ~-1 ~ minecraft:iron_trapdoor if predicate anc:random/1_5 run setblock ~ ~-1 ~ air
execute align xyz positioned ~.5 ~.5 ~.5 if entity @e[type=minecraft:item,predicate=anc:cutting,distance=..1] run function anc:recipes/cutting/loot
execute if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:honey_block"}},distance=..1] align xyz positioned ~.5 ~.5 ~.5 run function anc:recipes/cutting/honey/check
kill @s
