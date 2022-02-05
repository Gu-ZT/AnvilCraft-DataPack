scoreboard players set #check ancValue 0
execute positioned ~ ~1 ~ as @e[type=#anc:item_frame,nbt={Item:{id:"minecraft:spawner"},Facing:1b},distance=..0.5] run function anc:machines/interact_machine/interact/placement/spawner

execute if score #check ancValue matches 1 run kill @s