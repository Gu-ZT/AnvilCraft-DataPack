# 27数量减去9个空位最小为18
execute store result score @s ancValue run data get block ~ ~ ~ Items
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:1b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:2b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:3b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:10b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:11b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:12b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:19b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:20b}] run scoreboard players remove @s ancValue 1
execute if data block ~ ~ ~ Items.[{id:"minecraft:wheat_seeds",Slot:21b}] run scoreboard players remove @s ancValue 1
# 若放入最少1个物品
execute as @s[scores={ancValue=19..}] run function #anc:crafting_machine
