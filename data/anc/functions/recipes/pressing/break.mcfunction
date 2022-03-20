execute if block ~ ~-1 ~ minecraft:wet_sponge if block ~ ~-2 ~ minecraft:water_cauldron[level=2] run setblock ~ ~-2 ~ minecraft:water_cauldron[level=3]
execute if block ~ ~-1 ~ minecraft:wet_sponge if block ~ ~-2 ~ minecraft:water_cauldron[level=1] run setblock ~ ~-2 ~ minecraft:water_cauldron[level=2]
execute if block ~ ~-1 ~ minecraft:wet_sponge if block ~ ~-2 ~ minecraft:cauldron run setblock ~ ~-2 ~ minecraft:water_cauldron[level=1]
execute if block ~ ~-1 ~ minecraft:wet_sponge run setblock ~ ~-1 ~ minecraft:sponge
execute if block ~ ~-1 ~ minecraft:moss_block if block ~ ~-2 ~ minecraft:water_cauldron[level=2] run setblock ~ ~-2 ~ minecraft:water_cauldron[level=3]
execute if block ~ ~-1 ~ minecraft:moss_block if block ~ ~-2 ~ minecraft:water_cauldron[level=1] run setblock ~ ~-2 ~ minecraft:water_cauldron[level=2]
execute if block ~ ~-1 ~ minecraft:moss_block if block ~ ~-2 ~ minecraft:cauldron run setblock ~ ~-2 ~ minecraft:water_cauldron[level=1]
execute if block ~ ~-1 ~ minecraft:moss_block run setblock ~ ~-1 ~ minecraft:moss_carpet
execute if block ~ ~-1 ~ minecraft:magma_block if block ~ ~-2 ~ minecraft:cauldron if predicate anc:random/1_3 run setblock ~ ~-2 ~ minecraft:lava_cauldron
execute if block ~ ~-1 ~ minecraft:magma_block run setblock ~ ~-1 ~ minecraft:netherrack
execute if block ~ ~-1 ~ minecraft:snow_block if block ~ ~-2 ~ minecraft:powder_snow_cauldron[level=2] run setblock ~ ~-2 ~ minecraft:powder_snow_cauldron[level=3]
execute if block ~ ~-1 ~ minecraft:snow_block if block ~ ~-2 ~ minecraft:powder_snow_cauldron[level=1] run setblock ~ ~-2 ~ minecraft:powder_snow_cauldron[level=2]
execute if block ~ ~-1 ~ minecraft:snow_block if block ~ ~-2 ~ minecraft:cauldron run setblock ~ ~-2 ~ minecraft:powder_snow_cauldron[level=1]
execute if block ~ ~-1 ~ minecraft:snow_block run setblock ~ ~-1 ~ minecraft:packed_ice
kill @s
