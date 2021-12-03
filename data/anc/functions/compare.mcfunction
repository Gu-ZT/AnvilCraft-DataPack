execute at @s run tp @e[type=minecraft:area_effect_cloud,tag=anc_temp_aec] ~ ~ ~
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=anc_temp_aec] ancDistance = @s ancDistance
tag @e[type=minecraft:area_effect_cloud,tag=anc_temp_aec] remove anc_temp_aec
