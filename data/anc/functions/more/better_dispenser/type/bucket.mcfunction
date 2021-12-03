execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron[level=3] run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item replace block ~ ~ ~ container.0 with water_bucket
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron[level=3] run function anc:more/better_dispenser/level/empty

execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ lava_cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item replace block ~ ~ ~ container.0 with lava_bucket
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ lava_cauldron run function anc:more/better_dispenser/level/empty

execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ powder_snow_cauldron[level=3] run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item replace block ~ ~ ~ container.0 with powder_snow_bucket
execute if block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ powder_snow_cauldron[level=3] run function anc:more/better_dispenser/level/empty

execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run summon item ~ ~ ~ {Item:{id:"minecraft:water_bucket"}}
execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron[level=3] run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item modify block ~ ~ ~ container.0 anc:reduce1
execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron[level=3] run function anc:more/better_dispenser/level/empty

execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run summon item ~ ~ ~ {Item:{id:"minecraft:lava_bucket"}}
execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ lava_cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item modify block ~ ~ ~ container.0 anc:reduce1
execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ lava_cauldron run function anc:more/better_dispenser/level/empty

execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run summon item ~ ~ ~ {Item:{id:"minecraft:powder_snow_bucket"}}
execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ powder_snow_cauldron[level=3] run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item modify block ~ ~ ~ container.0 anc:reduce1
execute unless block ~ ~ ~ dispenser{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ powder_snow_cauldron[level=3] run function anc:more/better_dispenser/level/empty
