# 对每一个都编号
scoreboard players add #anc_no ancAnvil 1
scoreboard players operation @s ancAnvil = #anc_no ancAnvil
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["anc_aec_mark","anc_temp"],Age:0,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=anc_temp] ancAnvil = #anc_no ancAnvil
tag @e[type=minecraft:area_effect_cloud,tag=anc_temp] remove anc_temp
tag @s add anc_marked
