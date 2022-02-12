data remove storage temp input
data modify storage temp input set value []

# 数, ancValue是还剩下的, ancItemCount是生成的
scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
# 计数该种物品的全部数量赋给#Count
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] run function anc:recipes/compressing/add_count
# 设置其中一个输入并调用get_count函数
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_nugget"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_ingot"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_nugget"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_nugget"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_ingot"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:redstone"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:redstone_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:quartz"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:quartz"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:quartz_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_ingot"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:iron_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_ingot"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:gold_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:diamond"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:diamond_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:emerald"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:emerald_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_lazuli"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:lapis_lazuli"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:lapis_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:netherite_ingot"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:netherite_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:coal"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:coal"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:coal_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_ingot"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:copper_ingot"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:copper_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:glowstone_dust"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:glowstone"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_wart"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:nether_wart"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:nether_wart_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_iron"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_iron"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_iron_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_gold"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_gold_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_copper"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_copper"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:raw_copper_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:slime_ball"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:slime_ball"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:slime_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:melon_slice"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:melon_slice"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:melon"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:wheat"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:hay_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bone_meal"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:bone_meal"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:bone_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bone"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 3
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:bone"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:bone_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:snowball"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:snow_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:clay_ball"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:clay_ball"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:clay"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:brick"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:brick"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:bricks"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_brick"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:nether_brick"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:nether_bricks"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:sand"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:sand"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:sandstone"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_sand"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:red_sand"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:red_sandstone"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue


scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:prismarine_shard"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 9
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
# 优先做bricks
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:prismarine_bricks"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue
##########################################
scoreboard players set #multi ancValue 4
# 生成的数量
scoreboard players operation #make ancValue = #left ancValue
scoreboard players operation #make ancValue /= #multi ancValue
# 剩下的数量
scoreboard players operation #left ancValue %= #multi ancValue
##########################################
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:prismarine"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:prismarine_shard"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:pointed_dripstone"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:pointed_dripstone"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:dripstone_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:amethyst_shard"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:amethyst_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:magma_cream"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:magma_cream"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:magma_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:honeycomb"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:honeycomb"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:honeycomb_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

# 多重
scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:honey_bottle"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:honey_bottle"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:honey_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:glass_bottle"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 4 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:string"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:string"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:white_wool"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dried_kelp"}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:dried_kelp"}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:dried_kelp_block"}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue

scoreboard players set #Count ancValue 0
scoreboard players set #left ancValue 0
scoreboard players set #make ancValue 0
execute if score #exe_count ancValue matches 1.. as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:fruit_of_the_sea"}}},distance=..1] run function anc:recipes/compressing/add_count
scoreboard players set #multi ancValue 4
execute if score #exe_count ancValue matches 1.. run function anc:recipes/compressing/get_count
execute if score #left ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140011,id:'anc:fruit_of_the_sea',display:{Name:'{"italic":false,"translate":"anc.item.fruit_of_the_sea.name"}'}}}
execute if score #left ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #left ancValue
execute if score #make ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140012,id:'anc:kernel_of_the_sea',display:{Name:'{"italic":false,"translate":"anc.item.kernel_of_the_sea.name"}'}}}
execute if score #make ancValue matches 1.. store result storage temp input[-1].Count int 1 run scoreboard players get #make ancValue


function anc:handle/funcloot/loot
