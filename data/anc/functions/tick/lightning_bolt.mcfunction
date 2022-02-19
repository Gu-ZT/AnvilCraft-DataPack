fill ~-1 ~-2 ~-1 ~1 ~1 ~1 minecraft:command_block{auto:1b,Command:"function anc:blocks/magnet_block/set"} replace iron_block

execute as @e[type=slime,distance=..2] at @s run function anc:handle/summon_magma_cube
