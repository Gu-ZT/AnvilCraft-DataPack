execute if block ~ ~ ~ minecraft:water_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron
execute if block ~ ~ ~ minecraft:water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute if block ~ ~ ~ minecraft:water_cauldron[level=3] run setblock ~ ~ ~ minecraft:water_cauldron[level=2]

execute if block ~ ~ ~ minecraft:powder_snow_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron
execute if block ~ ~ ~ minecraft:powder_snow_cauldron[level=2] run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=1]
execute if block ~ ~ ~ minecraft:powder_snow_cauldron[level=3] run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=2]
