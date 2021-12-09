execute store success score @s ancDispelSuccess as @e[type=item,distance=..10,limit=1,sort=random] at @s if data entity @s Item.tag.Enchantments.[{id:"minecraft:binding_curse"}] run function anc:machines/interact_machine/interact/dispel_curse/dispel
execute if score @s ancDispelSuccess matches 1 run function anc:machines/interact_machine/clear/protocol
scoreboard players reset @s ancDispelSuccess

execute store success score @s ancDispelSuccess as @e[type=item,distance=..10,limit=1,sort=random] at @s if data entity @s Item.tag.Enchantments.[{id:"minecraft:vanishing_curse"}] run function anc:machines/interact_machine/interact/dispel_curse/dispel
execute if score @s ancDispelSuccess matches 1 run function anc:machines/interact_machine/clear/protocol
scoreboard players reset @s ancDispelSuccess
