execute at @e[tag=anc_cauldron,limit=1,sort=nearest] store result score #is_air ancValue if block ~ ~ ~ #anc:air
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:glass_bottle"}]} run function anc:more/better_dispenser/type/glass_bottle
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]} run function anc:more/better_dispenser/type/water_bottle
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket"}]} run function anc:more/better_dispenser/type/bucket
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:lava_bucket"}]} run function anc:more/better_dispenser/type/lava_bucket
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:water_bucket"}]} run function anc:more/better_dispenser/type/water_bucket
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:powder_snow_bucket"}]} run function anc:more/better_dispenser/type/powder_snow_bucket
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if predicate anc:handle/feed run function anc:more/better_dispenser/type/feed
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if score #is_air ancValue matches 1 if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:anvil"}]} run function anc:more/better_dispenser/type/anvil
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if score #is_air ancValue matches 1 if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:chipped_anvil"}]} run function anc:more/better_dispenser/type/chipped_anvil
execute unless score $Dispenser ancSuccess matches 1 store success score $Dispenser ancSuccess if score #is_air ancValue matches 1 if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:damaged_anvil"}]} run function anc:more/better_dispenser/type/damaged_anvil
scoreboard players reset $Dispenser ancSuccess
kill @s
