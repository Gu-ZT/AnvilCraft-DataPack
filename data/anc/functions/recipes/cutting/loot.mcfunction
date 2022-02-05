execute store result score @s ancItemCount run data get entity @s Item.Count

execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",tag:{id:"magnet_block"}}}] run loot spawn ~ ~-1 ~ loot anc:cutting/magnet_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/magnet_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/iron_ingot
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:gold_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/gold_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/gold_ingot
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:copper_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/copper_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:raw_iron_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/raw_iron_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/raw_gold_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:raw_copper_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/raw_copper_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/netherite_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/diamond_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:emerald_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/emerald_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/lapis_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/redstone_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:quartz_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/quartz_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:coal_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/coal_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:glowstone"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/glowstone
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:slime_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/slime_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:melon"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/melon
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:hay_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/hay_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:bone_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/bone_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:snow_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/snow_block
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:clay"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/clay
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:dried_kelp_block"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/dried_kelp_block

execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:honey_block",Count:1b}},tag=!anc.killed] run function anc:recipes/cutting/honey/check


execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/nether_star

execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:heart_of_the_sea"}}] run loot spawn ~ ~-1 ~ loot anc:cutting/heart_of_the_sea
kill @s