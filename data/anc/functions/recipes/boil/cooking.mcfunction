execute as @e[type=item,predicate=anc:boil,distance=..0.5] at @s if block ~ ~ ~ water_cauldron store success score @s ancBoilSuccess run function anc:recipes/boil/boil
kill @s
