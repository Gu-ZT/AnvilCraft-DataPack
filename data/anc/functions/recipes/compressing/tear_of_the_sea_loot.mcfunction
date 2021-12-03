execute if entity @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard",Count:1b}},distance=..1] run loot spawn ~ ~ ~ loot anc:blade_of_the_sea
execute store success entity @s Item.tag.ancTearSuccess int 1 run kill @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard",Count:1b}},distance=..1,limit=1]
kill @s[nbt={Item:{tag:{ancTearSuccess:1}}}]
