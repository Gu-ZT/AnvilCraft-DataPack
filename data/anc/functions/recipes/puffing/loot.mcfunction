execute if block ~ ~ ~ minecraft:water_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron
execute if block ~ ~ ~ minecraft:water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute if block ~ ~ ~ minecraft:water_cauldron[level=3] run setblock ~ ~ ~ minecraft:water_cauldron[level=2]

execute if entity @e[type=item,nbt={Item:{id:"minecraft:dirt"}},distance=..1] run data modify entity @s Item.id set value "minecraft:clay"
execute if entity @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"}},distance=..1] run data modify entity @s Item.id set value "minecraft:nether_wart_block"
execute if entity @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"}},distance=..1] run data modify entity @s Item.id set value "minecraft:warped_wart_block"
execute if entity @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}},distance=..1] run data modify entity @s Item.id set value "minecraft:fermented_spider_eye"
execute if entity @e[type=item,nbt={Item:{id:"minecraft:fire_coral"}},distance=..1] run data modify entity @s Item.id set value "minecraft:fire_coral_block"
execute if entity @e[type=item,nbt={Item:{id:"minecraft:horn_coral"}},distance=..1] run data modify entity @s Item.id set value "minecraft:horn_coral_block"
execute if entity @e[type=item,nbt={Item:{id:"minecraft:tube_coral"}},distance=..1] run data modify entity @s Item.id set value "minecraft:tube_coral_block"
execute if entity @e[type=item,nbt={Item:{id:"minecraft:brain_coral"}},distance=..1] run data modify entity @s Item.id set value "minecraft:brain_coral_block"
execute if entity @e[type=item,nbt={Item:{id:"minecraft:bubble_coral"}},distance=..1] run data modify entity @s Item.id set value "minecraft:bubble_coral_block"
