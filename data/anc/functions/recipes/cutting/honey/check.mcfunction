# 数清楚有多少蜂蜜块
scoreboard players set #honeyCount ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:honey_block"}},distance=..1] run function anc:recipes/cutting/honey/as_honey_block

# 数清楚有多少瓶子
scoreboard players set #bottleCount ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..1] run function anc:recipes/cutting/honey/as_bottle

# 瓶子/4得出消耗的蜂蜜块数量
scoreboard players operation #need_honeyCount ancValue = #bottleCount ancValue
scoreboard players operation #need_honeyCount ancValue /= $4 ancValue
# 不能取整的部分无论如何都会留下来
scoreboard players operation #left_bottleCount ancValue = #bottleCount ancValue
scoreboard players operation #left_bottleCount ancValue %= $4 ancValue

# 剩下的蜂蜜块数量为，，
scoreboard players operation #left_honeyCount ancValue = #honeyCount ancValue
scoreboard players operation #left_honeyCount ancValue -= #need_honeyCount ancValue
scoreboard players operation @s ancItemCount = #left_honeyCount ancValue
execute if score @s ancItemCount matches 1.. run loot spawn ~ ~-1 ~ loot anc:cutting/honey/block

# 蜂蜜块每缺少一个，就多出4个空瓶子
scoreboard players operation #left_honeyCount ancValue *= $4 ancValue
scoreboard players operation #left_bottleCount ancValue -= #left_honeyCount ancValue
scoreboard players operation @s ancItemCount = #left_bottleCount ancValue
execute if score @s ancItemCount matches 1.. run loot spawn ~ ~-1 ~ loot anc:cutting/honey/bottle

# 做出来真正能消耗的蜂蜜块是min(瓶子能消耗的need_honeyCount,总有的honeyCount)
# 如果没有剩，则取honeyCount，否则，honeyCount多出来了left的数量,即，Count-left=used
execute if score #left_honeyCount ancValue matches 1.. run scoreboard players operation #honeyCount ancValue -= #left_honeyCount ancValue
scoreboard players operation @s ancItemCount = #honeyCount ancValue
execute if score @s ancItemCount matches 1.. run loot spawn ~ ~-1 ~ loot anc:cutting/honey/honey