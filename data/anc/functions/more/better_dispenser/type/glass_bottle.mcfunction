execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item replace block ~ ~ ~ container.0 with potion{Potion:"minecraft:water"}
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run function anc:more/better_dispenser/level/water_level_down

execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run summon item ~ ~ ~ {Item:{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}}
execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item modify block ~ ~ ~ container.0 anc:reduce1
execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run function anc:more/better_dispenser/level/water_level_down

