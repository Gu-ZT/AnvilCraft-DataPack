execute as @e[type=item,predicate=anc:boil,distance=..0.5] at @s if block ~ ~ ~ water_cauldron run function anc:recipes/boil/boil
kill @s
