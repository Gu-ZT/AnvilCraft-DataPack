execute as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item replace block ~ ~ ~ container.0 with glass_bottle
execute as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron[level=1] run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item replace block ~ ~ ~ container.0 with glass_bottle
execute as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron[level=2] run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item replace block ~ ~ ~ container.0 with glass_bottle
execute as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ cauldron run function anc:more/better_dispenser/level/water_level_up
execute as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ water_cauldron unless block ~ ~ ~ water_cauldron[level=3] run function anc:more/better_dispenser/level/water_level_up
