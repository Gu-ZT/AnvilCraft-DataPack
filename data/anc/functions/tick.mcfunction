# 玩家tick
execute as @a at @s run function anc:tick/player

# 闪电tick
execute as @e[type=lightning_bolt] at @s run function anc:tick/lightning_bolt

# 精英怪
execute as @e[type=#anc:mobs,tag=!ancMob] at @s run function anc:tick/mobs

# 刷怪笼
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] unless data entity @s Item.tag.haveLore run data modify entity @s Item.tag.haveLore set value 0b
execute as @e[predicate=anc:items/spawner] run function anc:handle/spawner

# 村民计分ancLastRestock 以在选择器中使用
execute as @e[type=villager] store result score @s ancLastRestock run data get entity @s LastRestock

# 空间胶囊
execute as @e[type=item,nbt={Item:{tag:{id:"anc:space_capsule"}},OnGround:1b}] at @s run function anc:items/space_capsule/tick

# 铁砧tick
execute as @e[type=minecraft:falling_block,predicate=anc:anvil] run function anc:tick/anvil
# as专属药水云
execute as @e[type=minecraft:area_effect_cloud,tag=anc_aec_mark] run function anc:tick/aec

# 合成机和交互机和磁铁的运行，功能实现
execute as @e[tag=anc_craft_machine] at @s run function anc:machines/craft_machine/tick
execute as @e[tag=anc_interact_machine] at @s run function anc:machines/interact_machine/tick
execute if score $ancMagnetUseful ancConfig matches 1 as @e[type=glow_item_frame,tag=anc_magnet_block] at @s run function anc:machines/magnet_block/tick

# 合成机，交互机，磁铁的放置和拆除
function #anc:blocks
execute unless score $ancSkylandMode ancConfig matches 0 run function #anc_is:blocks

# 清理物品
kill @e[predicate=anc:items/needkill]
execute as @e[type=glow_item_frame,tag=anc_block] at @s positioned ~ ~-1 ~ unless entity @e[type=glow_item_frame,tag=anc_block,distance=..0.5] if predicate anc:blocks/needclear run function anc:tick/block_clear

# 游商来喽
execute as @e[type=wandering_trader,tag=!ancWanderingTrader] run function anc:handle/wandering_trader

# 空岛模式
execute unless score $ancSkylandMode ancSuccess matches 1 unless score $ancSkylandMode ancConfig matches 0 run function anc_is:load
execute unless score $ancSkylandMode ancConfig matches 0 run function anc_is:tick
    # 末地传送门方块
    execute unless score $ancSkylandMode ancConfig matches 0 as @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:ender_eye"},Facing:1b}] at @s if block ~ ~-1 ~ tinted_glass run function anc:handle/set_end_portal
