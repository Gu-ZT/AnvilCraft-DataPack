data remove storage anc:temp input
data modify storage anc:temp input set value []

# 分别计数
scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:tear_of_the_sea"}}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players operation #tear_of_the_sea ancValue = #Count ancValue

scoreboard players set #Count ancValue 0
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard",Count:1b}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players operation #prismarine_shard ancValue = #Count ancValue

# 取最小值为生成的数量
scoreboard players operation #Count ancValue < #tear_of_the_sea ancValue
scoreboard players operation #Count ancValue < #exe_count ancValue
# 计算消耗后的数量
scoreboard players operation #exe_count ancValue -= #Count ancValue
scoreboard players operation #tear_of_the_sea ancValue -= #Count ancValue
scoreboard players operation #prismarine_shard ancValue -= #Count ancValue

# 存入
execute if score #tear_of_the_sea ancValue matches 1.. run data modify storage anc:temp input append value {id:"minecraft:firework_star",tag:{ancTearSuccess:0,CustomModelData:11140013,id:'anc:tear_of_the_sea',display:{Name:'{"italic":false,"translate":"anc.item.tear_of_the_sea.name"}'}}}
execute if score #tear_of_the_sea ancValue matches 1.. store result storage anc:temp input[-1].Count int 1 run scoreboard players get #tear_of_the_sea ancValue

execute if score #prismarine_shard ancValue matches 1.. run data modify storage anc:temp input append value {id:"minecraft:prismarine_shard"}
execute if score #prismarine_shard ancValue matches 1.. store result storage anc:temp input[-1].Count int 1 run scoreboard players get #prismarine_shard ancValue

execute if score #Count ancValue matches 1.. run data modify storage anc:temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140014,id:'anc:blade_of_the_sea',display:{Name:'{"italic":false,"translate":"anc.item.blade_of_the_sea.name"}'}}}
execute if score #Count ancValue matches 1.. store result storage anc:temp input[-1].Count int 1 run scoreboard players get #Count ancValue

# 生成
function anc:handle/funcloot/loot