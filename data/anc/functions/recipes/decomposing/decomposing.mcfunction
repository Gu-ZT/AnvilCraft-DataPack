execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/chainmail] run function anc:recipes/decomposing/loot/chainmail
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/diamond] run function anc:recipes/decomposing/loot/diamond 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/iron] run function anc:recipes/decomposing/loot/iron 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/gold] run function anc:recipes/decomposing/loot/gold 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/netherite] run function anc:recipes/decomposing/loot/netherite 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/tools/diamond] run function anc:recipes/decomposing/loot/tools/diamond 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/tools/iron] run function anc:recipes/decomposing/loot/tools/iron 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/tools/gold] run function anc:recipes/decomposing/loot/tools/gold 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,predicate=anc:decomposing/tools/netherite] run function anc:recipes/decomposing/loot/tools/netherite 
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{tag:{id:"anc:kernel_of_the_sea"}}}] run function anc:recipes/decomposing/loot/kernel_of_the_sea_loot
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:ancient_debris"}}] at @s run loot spawn ~ ~ ~ loot anc:debris_scrap
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:elytra",tag:{Damage:0}}}] at @s run function anc:recipes/decomposing/loot/elytra_loot
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{tag:{dict:["seal_slate"]}}}] at @s run function anc:recipes/decomposing/loot/seal_slate
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:chest_minecart"}}] at @s run function anc:recipes/decomposing/loot/minecarts/chest_minecart
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:furnace_minecart"}}] at @s run function anc:recipes/decomposing/loot/minecarts/furnace_minecart
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:tnt_minecart"}}] at @s run function anc:recipes/decomposing/loot/minecarts/tnt_minecart
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:hopper_minecart"}}] at @s run function anc:recipes/decomposing/loot/minecarts/hopper_minecart
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:oak_chest_boat"}}] at @s run function anc:recipes/decomposing/loot/boats/oak_chest_boat
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_chest_boat"}}] at @s run function anc:recipes/decomposing/loot/boats/spruce_chest_boat
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:birch_chest_boat"}}] at @s run function anc:recipes/decomposing/loot/boats/birch_chest_boat
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:jungle_chest_boat"}}] at @s run function anc:recipes/decomposing/loot/boats/jungle_chest_boat
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:acacia_chest_boat"}}] at @s run function anc:recipes/decomposing/loot/boats/acacia_chest_boat
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:dark_oak_chest_boat"}}] at @s run function anc:recipes/decomposing/loot/boats/dark_oak_chest_boat
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:mangrove_chest_boat"}}] at @s run function anc:recipes/decomposing/loot/boats/mangrove_chest_boat
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:cherry_chest_boat"}}] at @s run function anc:recipes/decomposing/loot/boats/cherry_chest_boat
execute if score $ancTemp ancItemCount matches 1.. if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:bamboo_chest_raft"}}] at @s run function anc:recipes/decomposing/loot/boats/bamboo_chest_raft
