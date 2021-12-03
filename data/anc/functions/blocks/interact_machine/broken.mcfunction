execute store success score @s ancValue run kill @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:barrel"}}]
execute if score @s ancValue matches 1.. run loot spawn ~ ~0.5 ~ loot anc:interact_machine
kill @s
