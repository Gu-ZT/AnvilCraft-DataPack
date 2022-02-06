execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}}] run data modify entity @s Item.id set value "minecraft:heavy_weighted_pressure_plate"
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}}] run data modify entity @s Item.id set value "minecraft:light_weighted_pressure_plate"
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:sugar_cane"}}] run data modify entity @s Item.id set value "minecraft:paper"
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}}] run data modify entity @s Item.id set value "minecraft:snow"
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:milk_bucket"}}] run function anc:recipes/rolling/milk
