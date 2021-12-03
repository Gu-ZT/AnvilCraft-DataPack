execute if entity @s[type=minecraft:item,predicate=anc:decomposing/chainmail] run loot spawn ~ ~ ~ loot anc:decomposing/chainmail
execute if entity @s[type=minecraft:item,predicate=anc:decomposing/diamond] run loot spawn ~ ~ ~ loot anc:decomposing/diamond
execute if entity @s[type=minecraft:item,predicate=anc:decomposing/iron] run loot spawn ~ ~ ~ loot anc:decomposing/iron
execute if entity @s[type=minecraft:item,predicate=anc:decomposing/gold] run loot spawn ~ ~ ~ loot anc:decomposing/gold
execute if entity @s[type=minecraft:item,predicate=anc:decomposing/netherite] run loot spawn ~ ~ ~ loot anc:decomposing/netherite
execute if entity @s[type=minecraft:item,nbt={Item:{tag:{id:"anc:kernel_of_the_sea"},Count:1b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:heart_of_the_sea",Count:1b}}
execute if entity @s[type=minecraft:item,nbt={Item:{tag:{id:"anc:kernel_of_the_sea"},Count:1b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_shard",Count:4b}}
kill @s
