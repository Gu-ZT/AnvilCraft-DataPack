setblock ~ ~-1 ~ spawner
data modify block ~ ~-1 ~ {} set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag
data remove entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.id
kill @s
