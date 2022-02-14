
# 重置input列表
data remove storage temp input
data modify storage temp input set value []

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:wheat"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140030,id:'anc:flour',display:{Name:'{"italic":false,"translate":"anc.item.flour.name"}'}}}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",tag:{id:"anc:magnet_block"}}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:barrel",tag:{CustomModelData:11140001,id:'anc:magnet_block',display:{Name:'{"italic":false,"translate":"anc.block.magnet_block.name"}',Lore:['{"italic":false,"translate":"anc.block.magnet_block.lore"}']},BlockEntityTag:{Lock:'276082751CF95F35648CB2F47928AB2B'}}}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140026,id:'anc:magnet_ingot',display:{Name:'{"italic":false,"translate":"anc.item.magnet_ingot.name"}'}}}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_ingot"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_ingot"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_nugget"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_ingot"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_ingot"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_nugget"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:copper_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:copper_ingot"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_iron_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_iron_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_iron"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_gold_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_gold"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_copper_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_copper_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_copper"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:netherite_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:netherite_ingot"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:diamond_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:diamond"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:emerald_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:emerald"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:lapis_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:lapis_lazuli"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:redstone_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:redstone"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:quartz_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:quartz_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:quartz"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:coal_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:coal_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:coal"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:glowstone"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:glowstone"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:glowstone_dust"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:slime_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:slime_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:slime_ball"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:melon"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:melon"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:melon_slice"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:hay_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:hay_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:wheat"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bone_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:bone_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:bone_meal"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:snow_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:snow_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:snowball"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:clay"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:clay"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:clay_ball"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dried_kelp_block"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:dried_kelp_block"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:dried_kelp"}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 9 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:nether_star"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140017,id:'anc:nether_star_shard',display:{Name:'{"italic":false,"translate":"anc.item.nether_star_shard.name"}'}}}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:heart_of_the_sea"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:heart_of_the_sea"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140010,id:'anc:seed_of_the_sea',display:{Name:'{"italic":false,"translate":"anc.item.seed_of_the_sea.name"}'}}}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:beef"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:beef"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140037,id:'anc:meat_stuffing',display:{Name:'{"italic":false,"translate":"anc.item.meat_stuffing.name"}'}}}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 2 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:porkchop"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:porkchop"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140037,id:'anc:meat_stuffing',display:{Name:'{"italic":false,"translate":"anc.item.meat_stuffing.name"}'}}}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 2 run scoreboard players get #cost ancValue

# 设置Count为0, 设置剩余材料count为0
scoreboard players set #Count ancValue 0
scoreboard players set #cost ancValue 0
scoreboard players set #left ancValue 0
# 计数物品
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wet_sponge"}},distance=..1] run function anc:recipes/cutting/add_count
# 计算生成数和剩余
execute if score #exe_count ancValue matches 1.. run function anc:recipes/cutting/get_count
# 如果有剩余材料，进行生成
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:wet_sponge"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
# 按照Count进行生成
execute if score #cost ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140051,id:'anc:sponge_gemmule',display:{Name:'{"italic":false,"translate":"anc.item.sponge_gemmule.name"}'}}}
execute if score #cost ancValue matches 1.. store result storage temp input[-1].Count int 2 run scoreboard players get #cost ancValue

execute positioned ~ ~-1 ~ run function anc:handle/funcloot/loot
