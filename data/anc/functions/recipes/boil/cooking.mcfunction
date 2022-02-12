scoreboard players operation $ancTemp ancItemCount = $ancProcessingCount ancConfig
execute if score $ancTemp ancItemCount matches 1.. as @e[type=minecraft:item,predicate=anc:recipes/boil,distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons store success score $boil ancSuccess run function anc:recipes/boil/boil
execute if score $boil ancSuccess matches 1 run function anc:handle/cauldron_reduce
scoreboard players reset $boil ancSuccess
scoreboard players reset $ancTemp ancItemCount
kill @s
