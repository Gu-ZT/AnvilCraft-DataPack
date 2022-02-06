summon item ~ ~ ~ {Item:{id:"minecraft:bread",Count:1}}
execute store result entity @e[distance=..0.5,nbt={Item:{id:"minecraft:bread"}},limit=1,tag=!ancDecoct] Item.Count int 1 run data get entity @s Item.Count
execute as @e[distance=..0.5,nbt={Item:{id:"minecraft:bread"}},limit=1,tag=!ancDecoct] run tag @s add ancDecoct
