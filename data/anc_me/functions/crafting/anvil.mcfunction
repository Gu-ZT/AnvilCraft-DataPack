tag @s add amCrafting
scoreboard players operation @s amEnchCount += @e[type=item,limit=1,tag=!amCrafting,distance=..1] amEnchCount
execute unless score @s amEnchCount matches 9.. as @e[type=item,limit=1,tag=!amCrafting,distance=..1] if score @s amRepairCost matches 26.. if predicate anc:random/1_5 run function anc_me:crafting/anvil_yes
execute unless score @s amEnchCount matches 9.. as @e[type=item,limit=1,tag=!amCrafting,distance=..1] if score @s amRepairCost matches 11..25 if predicate anc:random/1_3 run function anc_me:crafting/anvil_yes
execute unless score @s amEnchCount matches 9.. as @e[type=item,limit=1,tag=!amCrafting,distance=..1] if score @s amRepairCost matches 0..10 if predicate anc:random/1_2 run function anc_me:crafting/anvil_yes
execute unless score @s amEnchCount matches 9.. if entity @e[type=item,limit=1,tag=!amCrafting,distance=..1] run kill @s
