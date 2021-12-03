execute as @e[type=minecraft:item,predicate=anc:decomposing,distance=..1] at @s run function anc:recipes/decomposing/loot
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ancient_debris"}},distance=..1] at @s run loot spawn ~ ~ ~ loot anc:debris_scrap
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra",tag:{Damage:0}}},distance=..1] at @s run function anc:recipes/decomposing/elytra_loot
kill @s
