execute store success score @s ancDispelSuccess as @e[type=item,distance=..10,limit=1,sort=random] at @s if data entity @s Item.tag.RepairCost run function anc:machines/interact_machine/interact/dispel_punishment/dispel
execute if score @s ancDispelSuccess matches 1 run function anc:machines/interact_machine/clear/protocol
scoreboard players reset @s ancDispelSuccess
