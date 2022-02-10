scoreboard players operation $ancTemp ancItemCount = $ancProcessingCount ancConfig
execute if score $ancTemp ancItemCount matches 1.. as @e[type=minecraft:item,predicate=anc:decoct,distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons run function anc:recipes/decoct/decoct
scoreboard players reset $ancTemp ancItemCount
kill @s
