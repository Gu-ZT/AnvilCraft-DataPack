data modify storage anc:dist Item.Slot set value 0b
execute store result score #dc ancValue run data get storage anc:dist Item.Count
data modify storage anc:temp distItems set value []
data modify storage anc:temp distItems set from block ~ ~ ~ Items
execute store result score #dist1 ancValue run loot insert ~ ~ ~ loot anc:machines/character/01
data modify block ~ ~ ~ Items set from storage anc:temp distItems
execute if predicate anc:inoverworld run setblock ~ 319 ~ shulker_box
execute unless predicate anc:inoverworld run setblock ~ 255 ~ shulker_box
execute if score #dist1 ancValue matches 1 run function anc:machines/dist/dist
execute if score #dc ancValue matches 1.. run function anc:machines/dist/dist_one
execute if predicate anc:inoverworld run setblock ~ 319 ~ air
execute unless predicate anc:inoverworld run setblock ~ 255 ~ air
execute if score #dc ancValue matches 1.. if predicate anc:machines/double_chest/righte positioned ~ ~ ~-1 run function anc:machines/dist/double
execute if score #dc ancValue matches 1.. if predicate anc:machines/double_chest/rightw positioned ~ ~ ~1 run function anc:machines/dist/double
execute if score #dc ancValue matches 1.. if predicate anc:machines/double_chest/rights positioned ~1 ~ ~ run function anc:machines/dist/double
execute if score #dc ancValue matches 1.. if predicate anc:machines/double_chest/rightn positioned ~-1 ~ ~ run function anc:machines/dist/double
