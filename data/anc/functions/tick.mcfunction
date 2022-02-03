execute as @a at @s run function anc:tick/player
execute as @e run function anc:tick/entity
execute as @e[type=experience_orb] run function anc:tick/experience_orb

execute as @e[type=minecraft:falling_block,predicate=anc:anvil,tag=!anc_marked] run function anc:mark
execute as @e[type=minecraft:area_effect_cloud,tag=anc_aec_mark] run function anc:aec
execute as @e[type=falling_block] store result score @s ancDistance run data get entity @s FallDistance

execute as @e[tag=anc_craft_machine] at @s run function anc:machines/craft_machine/tick
execute as @e[tag=anc_interact_machine] at @s run function anc:machines/interact_machine/tick
execute as @e[tag=anc_magnet] at @s run function anc:machines/magnet/tick

function #anc:blocks

# 清理物品
kill @e[nbt={Item:{tag:{ancClear:1b}}}]
execute as @e[type=glow_item_frame,tag=anc_block] at @s positioned ~ ~-1 ~ if data block ~ ~ ~ Items.[{Slot:0b,tag:{ancClear:1b}}] unless entity @e[type=glow_item_frame,tag=anc_block,distance=..0.5] run item replace block ~ ~ ~ container.0 with air
execute as @e[type=glow_item_frame,tag=anc_block] at @s positioned ~ ~-1 ~ if data block ~ ~ ~ Items.[{Slot:1b,tag:{ancClear:1b}}] unless entity @e[type=glow_item_frame,tag=anc_block,distance=..0.5] run item replace block ~ ~ ~ container.1 with air
execute as @e[type=glow_item_frame,tag=anc_block] at @s positioned ~ ~-1 ~ if data block ~ ~ ~ Items.[{Slot:2b,tag:{ancClear:1b}}] unless entity @e[type=glow_item_frame,tag=anc_block,distance=..0.5] run item replace block ~ ~ ~ container.2 with air
execute as @e[type=glow_item_frame,tag=anc_block] at @s positioned ~ ~-1 ~ if data block ~ ~ ~ Items.[{Slot:3b,tag:{ancClear:1b}}] unless entity @e[type=glow_item_frame,tag=anc_block,distance=..0.5] run item replace block ~ ~ ~ container.3 with air
execute as @e[type=glow_item_frame,tag=anc_block] at @s positioned ~ ~-1 ~ if data block ~ ~ ~ Items.[{Slot:4b,tag:{ancClear:1b}}] unless entity @e[type=glow_item_frame,tag=anc_block,distance=..0.5] run item replace block ~ ~ ~ container.4 with air
