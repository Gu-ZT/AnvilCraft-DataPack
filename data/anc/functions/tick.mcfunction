execute as @a at @s run function anc:tick/player
execute as @e[type=villager] store result score @s ancLastRestock run data get entity @s LastRestock


execute as @e[type=minecraft:falling_block,predicate=anc:anvil,tag=!anc_marked] run function anc:mark
execute as @e[type=minecraft:area_effect_cloud,tag=anc_aec_mark] run function anc:aec
execute as @e[type=falling_block] store result score @s ancDistance run data get entity @s FallDistance

execute as @e[tag=anc_craft_machine] at @s run function anc:machines/craft_machine/tick
execute as @e[tag=anc_interact_machine] at @s run function anc:machines/interact_machine/tick
execute if score $ancMagnetUseful ancConfig matches 1 run function anc:machines/magnet_block/tick

function #anc:blocks

# 清理物品
kill @e[predicate=anc:items/needkill]
execute as @e[type=glow_item_frame,tag=anc_block] at @s positioned ~ ~-1 ~ unless entity @e[type=glow_item_frame,tag=anc_block,distance=..0.5] if predicate anc:blocks/needclear run function anc:tick/block_clear
