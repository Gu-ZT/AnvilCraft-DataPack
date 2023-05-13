execute store success score $magnet ancSuccess run fill ~-1 ~-2 ~-1 ~1 ~1 ~1 minecraft:command_block{auto:1b,Command:"function anc:blocks/magnet_block/set"} replace iron_block
execute if score $magnet ancSuccess matches 1 run advancement grant @a[distance=..5] only anc:anc/magnet
execute if score $magnet ancSuccess matches 1 run scoreboard players reset $magnet ancSuccess

execute as @e[type=slime,distance=..4] at @s run function anc:handle/summon_magma_cube
execute as @e[type=vex,distance=..4] at @s run function anc:handle/summon_allay
