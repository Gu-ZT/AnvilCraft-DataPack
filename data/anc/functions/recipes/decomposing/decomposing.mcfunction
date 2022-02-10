execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/chainmail] run function anc:recipes/decomposing/loot/chainmail
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/diamond] run function anc:recipes/decomposing/loot/diamond 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/iron] run function anc:recipes/decomposing/loot/iron 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/gold] run function anc:recipes/decomposing/loot/gold 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/netherite] run function anc:recipes/decomposing/loot/netherite 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{tag:{id:"anc:kernel_of_the_sea"}}}] run function anc:recipes/decomposing/loot/kernel_of_the_sea_loot
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:ancient_debris"}},distance=..1] at @s run loot spawn ~ ~ ~ loot anc:debris_scrap
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:elytra",tag:{Damage:0}}},distance=..1] at @s run function anc:recipes/decomposing/loot/elytra_loot
