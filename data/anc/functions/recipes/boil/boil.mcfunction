execute if block ~ ~ ~ minecraft:water_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron
execute if block ~ ~ ~ minecraft:water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute if block ~ ~ ~ minecraft:water_cauldron[level=3] run setblock ~ ~ ~ minecraft:water_cauldron[level=2]

execute if entity @s[nbt={Item:{tag:{id:"anc:dumpling_raw"}}}] run function anc:recipes/boil/dumpling
execute if entity @s[nbt={Item:{tag:{id:"anc:beef_mushroom_stew_raw"}}}] run function anc:recipes/boil/beef_mushroom_stew
kill @s
