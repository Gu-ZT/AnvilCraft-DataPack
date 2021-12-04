execute as @e[type=minecraft:item,predicate=anc:puffing,distance=..1] at @s run function anc:recipes/puffing/loot
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{id:"anc:seed_of_the_sea"}}},distance=..1] at @s run function anc:recipes/puffing/seed_of_the_sea_loot
kill @s
