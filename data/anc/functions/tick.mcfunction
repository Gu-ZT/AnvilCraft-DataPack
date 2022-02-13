# 玩家tick
execute as @a at @s run function anc:tick/player

# 村民计分ancLastRestock 以在选择器中使用
execute as @e[type=villager] store result score @s ancLastRestock run data get entity @s LastRestock

# 铁砧编号并召唤专属药水云
execute as @e[type=minecraft:falling_block,predicate=anc:anvil,tag=!anc_marked] run function anc:handle/mark
# as专属药水云
execute as @e[type=minecraft:area_effect_cloud,tag=anc_aec_mark] run function anc:tick/aec

# 合成机和交互机和磁铁的运行，功能实现
execute as @e[tag=anc_craft_machine] at @s run function anc:machines/craft_machine/tick
execute as @e[tag=anc_interact_machine] at @s run function anc:machines/interact_machine/tick
execute if score $ancMagnetUseful ancConfig matches 1 as @e[type=glow_item_frame,tag=anc_magnet_block] at @s run function anc:machines/magnet_block/tick

# 合成机，交互机，磁铁的放置和拆除
function #anc:blocks

# 清理物品
kill @e[predicate=anc:items/needkill]
execute as @e[type=glow_item_frame,tag=anc_block] at @s positioned ~ ~-1 ~ unless entity @e[type=glow_item_frame,tag=anc_block,distance=..0.5] if predicate anc:blocks/needclear run function anc:tick/block_clear
