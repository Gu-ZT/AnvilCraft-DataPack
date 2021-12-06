execute as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:netherite_coil"},Count:1b}},distance=..1] run fill ~ ~-1 ~ ~ ~-1 ~ ancient_debris replace soul_soil
execute as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:netherite_coil"},Count:1b}},distance=..1] at @s run function anc:recipes/netherite/loot
kill @s
