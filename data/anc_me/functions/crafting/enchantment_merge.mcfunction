execute unless score @s amMerge matches 1 store success score @s amMerge as @e[type=item,distance=..1.5,nbt={Item:{id:"minecraft:enchanted_book",Count:1b}}] at @s run function anc_me:crafting/anvil
kill @s
