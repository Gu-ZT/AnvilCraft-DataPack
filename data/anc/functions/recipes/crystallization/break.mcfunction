scoreboard players operation $ancTemp ancItemCount = $ancProcessingCount ancConfig
execute if score $ancTemp ancItemCount matches 1.. as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:seed_of_the_sea"}}},distance=..1] at @s if block ~ ~ ~ #minecraft:cauldrons store success score $crystallization ancSuccess run function anc:recipes/crystallization/loot/tear_of_the_sea
execute if score $crystallization ancSuccess matches 1 run setblock ~ ~ ~ minecraft:cauldron
scoreboard players reset $crystallization ancSuccess
scoreboard players reset $ancTemp ancItemCount
kill @s
