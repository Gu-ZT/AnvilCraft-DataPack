setblock ~ ~-1 ~ spawner
data modify block ~ ~-1 ~ SpawnCount set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag.SpawnCount
data modify block ~ ~-1 ~ SpawnData set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag.SpawnData
data modify block ~ ~-1 ~ SpawnPotentials set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag.SpawnPotentials
data modify block ~ ~-1 ~ SpawnRange set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag.SpawnRange
data modify block ~ ~-1 ~ MaxSpawnDelay set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag.MaxSpawnDelay
data modify block ~ ~-1 ~ MinSpawnDelay set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag.MinSpawnDelay
data modify block ~ ~-1 ~ RequiredPlayerRange set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag.RequiredPlayerRange
data modify block ~ ~-1 ~ MaxNearbyEntities set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag.MaxNearbyEntities
data modify block ~ ~-1 ~ Delay set from entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.tag.BlockEntityTag.Delay
data remove entity @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5,limit=1] Item.id
kill @s
