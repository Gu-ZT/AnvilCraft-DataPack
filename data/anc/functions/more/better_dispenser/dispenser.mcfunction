execute at @e[tag=anc_cauldron,limit=1,sort=nearest] if block ~ ~ ~ air run tag @s add is_air
execute at @e[tag=anc_cauldron,limit=1,sort=nearest] if block ~ ~ ~ cave_air run tag @s add is_air
execute at @e[tag=anc_cauldron,limit=1,sort=nearest] if block ~ ~ ~ void_air run tag @s add is_air
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:glass_bottle"}]} run function anc:more/better_dispenser/type/glass_bottle
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]} run function anc:more/better_dispenser/type/water_bottle
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket"}]} run function anc:more/better_dispenser/type/bucket
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:lava_bucket"}]} run function anc:more/better_dispenser/type/lava_bucket
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:water_bucket"}]} run function anc:more/better_dispenser/type/water_bucket
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:powder_snow_bucket"}]} run function anc:more/better_dispenser/type/powder_snow_bucket
execute if entity @s[tag=is_air] if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:anvil"}]} run function anc:more/better_dispenser/type/anvil
execute if entity @s[tag=is_air] if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:chipped_anvil"}]} run function anc:more/better_dispenser/type/chipped_anvil
execute if entity @s[tag=is_air] if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:damaged_anvil"}]} run function anc:more/better_dispenser/type/damaged_anvil
kill @s
