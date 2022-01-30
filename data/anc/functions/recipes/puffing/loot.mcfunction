execute if block ~ ~ ~ minecraft:water_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron
execute if block ~ ~ ~ minecraft:water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute if block ~ ~ ~ minecraft:water_cauldron[level=3] run setblock ~ ~ ~ minecraft:water_cauldron[level=2]

execute if entity @e[type=item,nbt={Item:{id:"minecraft:dirt",Count:1b}},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clay",Count:1b}}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",Count:1b}},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:nether_wart_block",Count:1b}}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",Count:1b}},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:warped_wart_block",Count:1b}}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:spider_eye",Count:1b}},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:fermented_spider_eye",Count:1b}}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:fire_coral",Count:1b}},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:fire_coral_block",Count:1b}}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:horn_coral",Count:1b}},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:horn_coral_block",Count:1b}}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:tube_coral",Count:1b}},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tube_coral_block",Count:1b}}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:brain_coral",Count:1b}},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brain_coral_block",Count:1b}}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:bubble_coral",Count:1b}},distance=..1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bubble_coral_block",Count:1b}}

kill @s
