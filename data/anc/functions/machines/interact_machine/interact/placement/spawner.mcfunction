scoreboard players set #check ancValue 1
setblock ~ ~-1 ~ spawner
data modify block ~ ~-1 ~ {} merge from entity @s Item.tag.BlockEntityTag
data remove entity @s Item.id
