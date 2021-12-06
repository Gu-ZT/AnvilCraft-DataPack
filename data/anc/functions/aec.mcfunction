scoreboard players operation #t ancAnvil = @s ancAnvil
tag @s add anc_temp_aec
execute as @e[type=minecraft:falling_block,tag=anc_marked] if score @s ancAnvil = #t ancAnvil run function anc:compare

# 实体掉落 attack
execute at @s[tag=anc_temp_aec,scores={ancDistance=2..}] run function anc:more/attack/main

# 测试
# execute at @s[tag=anc_temp_aec] run function anc:test

# 物品压缩 compressing
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ minecraft:cauldron run function anc:recipes/compressing/break
# 膨发 puffing
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ minecraft:water_cauldron run function anc:recipes/puffing/break
# 晶化 crystallization
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ minecraft:powder_snow_cauldron run function anc:recipes/crystallization/break
# 粉碎 smashing
execute at @s[tag=anc_temp_aec] unless block ~ ~-1 ~ #anc:block run function anc:recipes/smashing/break
# 压榨 pressing
execute at @s[tag=anc_temp_aec] if block ~ ~-2 ~ #anc:cauldron run function anc:recipes/pressing/break
# 切割 cutting
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ #minecraft:trapdoors run function anc:recipes/cutting/break
# 分解 decomposing
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ minecraft:smithing_table run function anc:recipes/decomposing/break
# 辊压 rolling
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ minecraft:piston[facing=up] run function anc:recipes/rolling/break
# 压合 laminating
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ #anc:laminating run function anc:recipes/laminating/break
# 合金重生 netherite
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ minecraft:soul_soil run function anc:recipes/netherite/break

# 破坏 destroying
execute at @s[tag=anc_temp_aec] unless block ~ ~-1 ~ #anc:not_destroy if block ~ ~-2 ~ stonecutter run function anc:more/broken/main
# 准确的投掷器 accurate_dropper
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ minecraft:dropper[facing=down] run function anc:more/accurate_dropper/main
# 更好的发射器 better_dispenser
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ minecraft:dispenser unless block ~ ~-1 ~ minecraft:dispenser[facing=up] run function anc:more/better_dispenser/main

# 附魔合并
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ #anvil run function #anc:recipes/enchantments_merge
# 超限附魔
execute at @s[tag=anc_temp_aec] if block ~ ~-1 ~ crying_obsidian run function anc_me:crafting/main
