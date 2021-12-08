execute run scoreboard players set @s ancInteract 0
execute if data block ~ ~ ~ Items.[{tag:{id:"anc:absorb_protocol"},Slot:1b}] run scoreboard players set @s ancInteract 1
execute if data block ~ ~ ~ Items.[{tag:{id:"anc:dispel_protocol_curse"},Slot:1b}] run scoreboard players set @s ancInteract 2
execute if data block ~ ~ ~ Items.[{tag:{id:"anc:dispel_protocol_first"},Slot:1b}] run scoreboard players set @s ancInteract 3
execute if data block ~ ~ ~ Items.[{tag:{id:"anc:dispel_protocol_last"},Slot:1b}] run scoreboard players set @s ancInteract 4
execute if data block ~ ~ ~ Items.[{tag:{id:"anc:dispel_protocol_punishment"},Slot:1b}] run scoreboard players set @s ancInteract 5
execute if data block ~ ~ ~ Items.[{tag:{id:"anc:dispel_protocol_random"},Slot:1b}] run scoreboard players set @s ancInteract 6
execute if data block ~ ~ ~ Items.[{tag:{id:"anc:repair_protocol"},Slot:1b}] run scoreboard players set @s ancInteract 7

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
