execute if entity @s[nbt={BlockState:{Name:"minecraft:chipped_anvil"}}] run data modify entity @s BlockState.Name set value "minecraft:anvil"
execute if entity @s[nbt={BlockState:{Name:"minecraft:damaged_anvil"}}] run data modify entity @s BlockState.Name set value "minecraft:chipped_anvil"
tag @s add repairTrue
execute at @s positioned ~ ~2.5 ~ run particle minecraft:scrape ~ ~ ~ 0.125 0.125 0.125 0 0 force
