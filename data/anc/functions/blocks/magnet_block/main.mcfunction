# execute as @a at @s run function anc:blocks/magnet_block/playerset
execute as @e[type=glow_item_frame,tag=anc_magnet_block] at @s unless block ~ ~ ~ minecraft:lodestone run function anc:blocks/magnet_block/broken
function anc:blocks/magnet_block/make
