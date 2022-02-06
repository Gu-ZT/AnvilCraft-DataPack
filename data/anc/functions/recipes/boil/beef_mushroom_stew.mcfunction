loot spawn ~ ~ ~ loot anc:beef_mushroom_stew
execute store result entity @e[distance=..0.5,nbt={Item:{tag:{id:"anc:beef_mushroom_stew"}}},limit=1,tag=!ancBoil] Item.Count int 1 run data get entity @s Item.Count
execute as @e[distance=..0.5,nbt={Item:{tag:{id:"anc:beef_mushroom_stew"}}},limit=1,tag=!ancBoil] run tag @s add ancBoil