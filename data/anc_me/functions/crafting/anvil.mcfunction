function anc_me:entities/items/get/amenchcount

tag @s add amCrafting

scoreboard players operation #base ancValue = #amEnchCount ancValue
scoreboard players set #check ancValue 0
execute as @e[type=item,limit=1,tag=!amCrafting,distance=..1] run function anc_me:crafting/anvil_



execute if score #check ancValue matches 1 run kill @s