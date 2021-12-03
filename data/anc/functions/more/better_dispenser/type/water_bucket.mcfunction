execute as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ cauldron run execute at @e[tag=anc_dispenser,limit=1,distance=..1.5] run item replace block ~ ~ ~ container.0 with bucket
execute as @e[tag=anc_cauldron,limit=1,distance=..1.5] at @s if block ~ ~ ~ cauldron run function anc:more/better_dispenser/level/water
