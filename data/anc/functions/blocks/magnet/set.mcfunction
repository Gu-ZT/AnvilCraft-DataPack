summon minecraft:glow_item_frame ~ ~ ~ {Tags:["anc_magnet"],Item:{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:11140001}},Facing:1b,Fixed:1b}
scoreboard players set @e[type=minecraft:glow_item_frame,distance=..1,limit=1] ancAnvilType 0
scoreboard players set @e[type=minecraft:glow_item_frame,distance=..1,limit=1] ancValue 0
setblock ~ ~ ~ minecraft:lodestone
