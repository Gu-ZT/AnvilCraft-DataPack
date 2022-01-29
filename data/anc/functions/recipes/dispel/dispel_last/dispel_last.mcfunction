execute store success score @s ancDispelSuccess as @e[type=item,distance=..10,limit=1,sort=random] at @s if data entity @s Item.tag.Enchantments run function anc:recipes/dispel/dispel_last/dispel
execute if score @s ancDispelSuccess matches 1 run kill @e[type=item,nbt={Item:{tag:{dict:["protocol"]}}},limit=1,sort=nearest]
scoreboard players reset @s ancDispelSuccess
