
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] run data modify entity @s Item.id set value "minecraft:heavy_weighted_pressure_plate"
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1] run data modify entity @s Item.id set value "minecraft:light_weighted_pressure_plate"
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:sugar_cane"}},distance=..1] run data modify entity @s Item.id set value "minecraft:paper"
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}},distance=..1] run data modify entity @s Item.id set value "minecraft:snow"
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:pumpkin_seeds"}},distance=..1] run data modify entity @s Item merge value {id:"minecraft:firework_star",tag:{CustomModelData:11140029,id:'anc:grease',display:{Name:'{"italic":false,"translate":"anc.item.grease.name"}'}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:melon_seeds"}},distance=..1] run data modify entity @s Item merge value {id:"minecraft:firework_star",tag:{CustomModelData:11140029,id:'anc:grease',display:{Name:'{"italic":false,"translate":"anc.item.grease.name"}'}}}
execute as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:dough"}}},distance=..1] run data modify entity @s Item merge value {id:"minecraft:firework_star",tag:{CustomModelData:11140032,id:'anc:flatdough',display:{Name:'{"italic":false,"translate":"anc.item.flatdough.name"}'}}}



execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:milk_bucket"}},distance=..1] run function anc:recipes/rolling/milk


data remove storage temp input
data modify storage temp input set value []

scoreboard players set #Count ancValue 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:cooked_porkchop"}},distance=..1] run function anc:recipes/rolling/add_count
execute if score #Count ancValue matches 1.. run data modify storage temp input append value {id:"minecraft:firework_star",tag:{CustomModelData:11140029,id:'anc:grease',display:{Name:'{"italic":false,"translate":"anc.item.grease.name"}'}}}
execute if score #Count ancValue matches 1.. store result storage temp input[-1].Count int 8 run scoreboard players get #Count ancValue

function anc:funcloot/loot