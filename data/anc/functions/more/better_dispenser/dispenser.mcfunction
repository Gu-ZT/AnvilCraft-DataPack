execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:glass_bottle"}]} run function anc:more/better_dispenser/type/glass_bottle
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]} run function anc:more/better_dispenser/type/water_bottle
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket"}]} run function anc:more/better_dispenser/type/bucket
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:lava_bucket"}]} run function anc:more/better_dispenser/type/lava_bucket
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:water_bucket"}]} run function anc:more/better_dispenser/type/water_bucket
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:powder_snow_bucket"}]} run function anc:more/better_dispenser/type/powder_snow_bucket
kill @s
