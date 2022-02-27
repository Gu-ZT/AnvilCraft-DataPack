scoreboard players set #succeed ancValue 1

execute if entity @s[predicate=anc:anvil/chipped] run data modify entity @s BlockState.Name set value "minecraft:anvil"
execute if entity @s[predicate=anc:anvil/damaged] run data modify entity @s BlockState.Name set value "minecraft:chipped_anvil"
tag @s add ancRepairTrue
execute at @s positioned ~ ~2.5 ~ run particle minecraft:scrape ~ ~ ~ 0.125 0.125 0.125 0 0 force
