execute positioned ~ ~-1 ~ as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{id:"anc:seed_of_the_sea"}}},distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons run function anc:recipes/crystallization/seed_of_the_sea_loot
kill @s
