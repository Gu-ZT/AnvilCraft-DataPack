execute as @e[type=item,predicate=anc:decoct,distance=..0.5] at @s if block ~ ~ ~ cauldron run function anc:recipes/decoct/decoct
kill @s
