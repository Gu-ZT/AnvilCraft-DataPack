execute as @e[type=minecraft:falling_block,predicate=anc:anvil,tag=!anc_marked] run function anc:mark
execute as @e[type=minecraft:area_effect_cloud,tag=anc_aec_mark] run function anc:aec
execute as @e[type=falling_block] store result score @s ancDistance run data get entity @s FallDistance
execute as @e[tag=anc_craft_machine] at @s run function anc:machines/craft_machine/tick
function anc:blocks/magnet/main
function anc:blocks/craft_machine/main
function anc:blocks/interact_machine/main

# 清理物品
clear @a #anc:clear{ancClear:1b}
kill @e[nbt={Item:{tag:{ancClear:1b}}}]
execute as @e[type=glow_item_frame] at @s if data block ~ ~ ~ Items.[{Slot:0b,tag:{ancClear:1b}}] run item replace block ~ ~-1 ~ container.0 with air
execute as @e[type=glow_item_frame] at @s if data block ~ ~ ~ Items.[{Slot:1b,tag:{ancClear:1b}}] run item replace block ~ ~-1 ~ container.1 with air
execute as @e[type=glow_item_frame] at @s if data block ~ ~ ~ Items.[{Slot:2b,tag:{ancClear:1b}}] run item replace block ~ ~-1 ~ container.2 with air
execute as @e[type=glow_item_frame] at @s if data block ~ ~ ~ Items.[{Slot:3b,tag:{ancClear:1b}}] run item replace block ~ ~-1 ~ container.3 with air
execute as @e[type=glow_item_frame] at @s if data block ~ ~ ~ Items.[{Slot:4b,tag:{ancClear:1b}}] run item replace block ~ ~-1 ~ container.4 with air
