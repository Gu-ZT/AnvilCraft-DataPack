scoreboard players operation $ancTemp ancItemCount = $ancProcessingCount ancConfig
execute if score $ancTemp ancItemCount matches 1.. as @e[type=minecraft:item,predicate=anc:puffing,distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons store success score $puffing ancSuccess run function anc:recipes/puffing/puffing
execute if score $puffing ancSuccess matches 1 run function anc:handle/cauldron_reduce
scoreboard players reset $puffing ancSuccess
scoreboard players reset $ancTemp ancItemCount
kill @s
