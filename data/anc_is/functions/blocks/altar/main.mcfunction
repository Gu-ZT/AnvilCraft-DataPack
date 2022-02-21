# execute as @a at @s run function anc_is:blocks/altar/playerset
execute as @e[type=glow_item_frame,tag=anc_altar] at @s unless block ~ ~ ~ minecraft:piston_head run function anc_is:blocks/altar/broken
