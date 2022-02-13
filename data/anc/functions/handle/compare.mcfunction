scoreboard players set #ifAnvil ancValue 1
execute at @s run tp @e[type=minecraft:area_effect_cloud,tag=anc_temp_aec] ~ ~ ~
execute store result score #fallDistance ancValue run data get entity @s FallDistance
