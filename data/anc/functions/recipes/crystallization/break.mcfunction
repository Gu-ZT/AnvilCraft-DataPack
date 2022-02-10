scoreboard players operation $ancTemp ancItemCount = $ancProcessingCount ancConfig
execute if score $ancTemp ancItemCount matches 1.. as @e[type=minecraft:item,predicate=anc:recipes/crystallization,distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons store success score $crystallization ancSuccess run function anc:recipes/crystallization/crystallization
execute if score $crystallization ancSuccess matches 1 run setblock ~ ~ ~ minecraft:cauldron
scoreboard players reset $crystallization ancSuccess
scoreboard players reset $ancTemp ancItemCount
kill @s

