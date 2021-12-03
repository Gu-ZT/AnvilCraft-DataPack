execute if block ~ ~-1 ~ dispenser[facing=down] run function anc:more/better_dispenser/facing/down
execute if block ~ ~-1 ~ dispenser[facing=east] run function anc:more/better_dispenser/facing/east
execute if block ~ ~-1 ~ dispenser[facing=west] run function anc:more/better_dispenser/facing/west
execute if block ~ ~-1 ~ dispenser[facing=north] run function anc:more/better_dispenser/facing/north
execute if block ~ ~-1 ~ dispenser[facing=south] run function anc:more/better_dispenser/facing/south
execute as @e[tag=anc_dispenser] at @s run function anc:more/better_dispenser/dispenser
kill @s
