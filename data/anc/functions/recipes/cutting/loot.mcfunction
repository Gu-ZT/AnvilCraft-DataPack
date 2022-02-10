execute as @e[type=item,nbt={Item:{id:"minecraft:wheat"}}] run tp @s ~ ~-1 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:wheat"}}] run data modify entity @s Item merge value {id:"minecraft:firework_star",tag:{CustomModelData:11140030,id:'anc:flour',display:{Name:'{"italic":false,"translate":"anc.item.flour.name"}'}}}

data remove storage temp input
data modify storage temp input set value []

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",tag:{id:"anc:magnet_block"}}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140026,id:'anc:magnet_ingot',display:{Name:'{"italic":false,"translate":"anc.item.magnet_ingot.name"}'}}}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_ingot"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_nugget"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_ingot"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_nugget"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:copper_ingot"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_iron_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_iron"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_gold"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_copper_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_copper"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:netherite_ingot"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:diamond"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:emerald"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:lapis_lazuli"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:redstone"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:quartz_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:quartz"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:coal_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:coal"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:glowstone"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:glowstone_dust"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:slime_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:slime_ball"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:melon"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:melon_slice"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:hay_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:wheat"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bone_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:bone_meal"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:snow_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:snowball"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:clay"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:clay_ball"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dried_kelp_block"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:dried_kelp"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140017,id:'anc:nether_star_shard',display:{Name:'{"italic":false,"translate":"anc.item.nether_star_shard.name"}'}}}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:heart_of_the_sea"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140010,id:'anc:seed_of_the_sea',display:{Name:'{"italic":false,"translate":"anc.item.seed_of_the_sea.name"}'}}}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:beef"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140037,id:'anc:meat_stuffing',display:{Name:'{"italic":false,"translate":"anc.item.meat_stuffing.name"}'}}}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 2 run scoreboard players get #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:porkchop"}},distance=..1] run function anc:recipes/cutting/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140037,id:'anc:meat_stuffing',display:{Name:'{"italic":false,"translate":"anc.item.meat_stuffing.name"}'}}}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 2 run scoreboard players get #Count ancValue

execute positioned ~ ~-1 ~ run function anc:handle/funcloot/loot
