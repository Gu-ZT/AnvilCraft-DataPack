execute as @a at @s run function anc:blocks/magnet/playerset
execute as @e[type=glow_item_frame,tag=anc_magnet] at @s unless block ~ ~ ~ minecraft:lodestone run function anc:blocks/magnet/broken
execute as @e[type=glow_item_frame,tag=anc_magnet] at @s if predicate anc:strong run function anc:blocks/magnet/start
execute as @e[type=glow_item_frame,tag=anc_magnet] at @s unless predicate anc:strong run function anc:blocks/magnet/stop
execute as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}}] run data modify entity @s Time set value 2
execute as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:chipped_anvil"}}] run data modify entity @s Time set value 2
execute as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:damaged_anvil"}}] run data modify entity @s Time set value 2
execute as @e[type=minecraft:falling_block,predicate=anc:anvil] at @s positioned ~ ~1 ~ unless entity @e[type=glow_item_frame,tag=anc_magnet,distance=..0.5] run data modify entity @s NoGravity set value 0b
function anc:blocks/magnet/make
execute as @e[type=falling_block,tag=anc_marked] at @s run data modify entity @s FallHurtAmount set value 2.0f
