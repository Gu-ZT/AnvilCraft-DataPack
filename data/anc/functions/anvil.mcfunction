execute as @s[tag=!anc_marked] run function anc:mark
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["anc_aec_mark"]}
execute as @s run function anc:anvil
