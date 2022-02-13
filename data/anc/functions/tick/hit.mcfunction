
# 实体掉落 attack
execute if score #fallDistance ancValue matches 2.. positioned ~-0.5 ~ ~-0.5 as @e[type=!#anc:not_kill,dx=0] positioned ~ ~-0.99 ~ if entity @s[dx=0] positioned ~0.5 ~0.99 ~0.5 run loot spawn ~ ~ ~ kill @s

# 测试
# execute run function anc:test

# 物品压缩 compressing
execute positioned ~ ~-1 ~ unless predicate anc:multi_blocks/cooker if block ~ ~ ~ minecraft:cauldron run function anc:recipes/compressing/break
# 膨发 puffing
execute positioned ~ ~-1 ~ unless predicate anc:multi_blocks/cooker if block ~ ~ ~ minecraft:water_cauldron run function anc:recipes/puffing/break
# 晶化 crystallization
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:powder_snow_cauldron run function anc:recipes/crystallization/break
# 粉碎 smashing
execute unless block ~ ~-1 ~ #anc:block run function anc:recipes/smashing/break
# 压榨 pressing
execute if block ~ ~-2 ~ #anc:cauldron run function anc:recipes/pressing/break
# 切割 cutting
execute if block ~ ~-1 ~ #minecraft:trapdoors run function anc:recipes/cutting/break
# 分解 decomposing
execute if block ~ ~-1 ~ minecraft:smithing_table run function anc:recipes/decomposing/break
# 辊压 rolling
execute if block ~ ~-1 ~ minecraft:piston[facing=up] run function anc:recipes/rolling/break
# 压合 laminating
execute if block ~ ~-1 ~ #anc:laminating run function anc:recipes/laminating/break
# 合金重生 netherite
execute if block ~ ~-1 ~ minecraft:soul_soil run function anc:recipes/netherite/break
# 祛魔协议 dispel
execute if block ~ ~-1 ~ minecraft:grindstone run function anc:recipes/dispel/break

# 煎炒 decoct
execute positioned ~ ~-1 ~ if predicate anc:multi_blocks/cooker if block ~ ~ ~ minecraft:cauldron run function anc:recipes/decoct/cooking
# 蒸煮 boil
execute positioned ~ ~-1 ~ if predicate anc:multi_blocks/cooker if block ~ ~ ~ minecraft:water_cauldron run function anc:recipes/boil/cooking

# 破坏 destroying
execute unless block ~ ~-1 ~ #anc:not_destroy if block ~ ~-2 ~ stonecutter run function anc:more/broken/main
# 准确的投掷器 accurate_dropper
execute if block ~ ~-1 ~ minecraft:dropper[facing=down] run function anc:more/accurate_dropper/main
# 更好的发射器 better_dispenser
execute if block ~ ~-1 ~ minecraft:dispenser unless block ~ ~-1 ~ minecraft:dispenser[facing=up] run function anc:more/better_dispenser/main

# 附魔合并
execute if block ~ ~-1 ~ #anvil run function #anc:recipes/enchantments_merge
# 超限附魔
execute if block ~ ~-1 ~ crying_obsidian run function anc_me:crafting/main
# 红石EMP
execute if block ~ ~-1 ~ redstone_block positioned ~ ~-1 ~ run function anc:emp/main
