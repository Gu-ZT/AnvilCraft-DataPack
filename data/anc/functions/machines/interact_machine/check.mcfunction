execute run scoreboard players set @s ancInteract 0
data remove storage temp ancInteract
data modify storage temp ancInteract set from block ~ ~ ~ Items[{Slot:1b}].tag.id
execute if data storage temp {ancInteract:"anc:absorb_protocol"} run scoreboard players set @s ancInteract 1
execute if data storage temp {ancInteract:"anc:repair_protocol"} run scoreboard players set @s ancInteract 2
execute if data storage temp {ancInteract:"anc:protect_protocol"} run scoreboard players set @s ancInteract 3
execute if data storage temp {ancInteract:"anc:restock_protocol"} run scoreboard players set @s ancInteract 4
execute if data storage temp {ancInteract:"anc:placement_protocol"} run scoreboard players set @s ancInteract 5

execute store result score @s ancValue run data get block ~ ~ ~ Items
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:3b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:4b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:5b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:12b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:13b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:14b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:21b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:22b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:23b}] run scoreboard players remove @s ancValue 1
execute run function #anc:interact_machine
