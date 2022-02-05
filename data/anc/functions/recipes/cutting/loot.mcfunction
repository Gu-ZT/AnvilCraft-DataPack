execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{id:"magnet_block"}}}] run loot spawn ~ ~-1 ~ loot anc:cutting/magnet_ingot_9
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:iron_ingot",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:iron_nugget",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:gold_ingot",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:gold_nugget",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:copper_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:copper_ingot",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:raw_iron_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:raw_iron",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:raw_gold",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:raw_copper_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:raw_copper",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:netherite_ingot",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:diamond",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:emerald",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:lapis_lazuli",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:redstone",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:quartz_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:quartz",Count:4b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:coal_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:coal",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:glowstone",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:glowstone_dust",Count:4b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:slime_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:slime_ball",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:melon",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:melon_slice",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:hay_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:wheat",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:bone_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:bone_meal",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:snow_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:snowball",Count:4b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:clay",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:clay_ball",Count:4b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:dried_kelp_block",Count:1b}}] run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:dried_kelp",Count:9b}}
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:honey_block",Count:1b}}] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass_bottle",Count:4b}},distance=..1] run function anc:recipes/cutting/honey


execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run loot spawn ~ ~-1 ~ loot anc:nether_star_shard
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run loot spawn ~ ~-1 ~ loot anc:nether_star_shard
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run loot spawn ~ ~-1 ~ loot anc:nether_star_shard
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run loot spawn ~ ~-1 ~ loot anc:nether_star_shard

execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] run loot spawn ~ ~-1 ~ loot anc:seed_of_the_sea
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] run loot spawn ~ ~-1 ~ loot anc:seed_of_the_sea
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] run loot spawn ~ ~-1 ~ loot anc:seed_of_the_sea
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] run loot spawn ~ ~-1 ~ loot anc:seed_of_the_sea
kill @s