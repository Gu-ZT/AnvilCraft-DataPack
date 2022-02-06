loot spawn ~ ~ ~ loot anc:dumpling
execute store result entity @e[distance=..0.5,nbt={Item:{tag:{id:"anc:dumpling"}}},limit=1,tag=!ancBoil] Item.Count int 1 run data get entity @s Item.Count
execute as @e[distance=..0.5,nbt={Item:{tag:{id:"anc:dumpling"}}},limit=1,tag=!ancBoil] run tag @s add ancBoil
