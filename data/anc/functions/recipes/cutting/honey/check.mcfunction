data remove storage temp input
data modify storage temp input set value []

# 数清楚有多少蜂蜜块
scoreboard players set #honeyCount ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:honey_block"}},distance=..1] run function anc:recipes/cutting/honey/as_honey_block

# 数清楚有多少瓶子
scoreboard players set #bottleCount ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..1] run function anc:recipes/cutting/honey/as_bottle

# 瓶子数量与蜂蜜块呈4:1消耗
# 每次合成检索数量
scoreboard players set #Count ancValue 0
execute if score #honeyCount ancValue matches 1.. if score #bottleCount ancValue matches 4.. run function anc:recipes/cutting/honey/loop

# 蜂蜜块
execute if score #honeyCount ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:honey_block"}
execute if score #honeyCount ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #honeyCount ancValue

# 空瓶子
execute if score #bottleCount ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:glass_bottle"}
execute if score #bottleCount ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #bottleCount ancValue

# 蜂蜜瓶
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:honey_bottle"}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #Count ancValue

execute positioned ~ ~-1 ~ run function anc:handle/funcloot/loot
