execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run execute at @e[tag=anc_dispenser,limit=1,sort=nearest] run execute at @e[tag=anc_cauldron,limit=1,distance=..1.5] run summon item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}

execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run execute at @e[tag=anc_dispenser,limit=1,sort=nearest] run item modify block ~ ~ ~ container.0 anc:reduce1

execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run execute at @e[tag=anc_dispenser,limit=1,sort=nearest] run item replace block ~ ~ ~ container.0 with potion{Potion:"minecraft:water"}

execute as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run function anc:more/better_dispenser/level/water_level_down
