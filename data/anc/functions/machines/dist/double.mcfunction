execute if predicate anc:inoverworld run clone ~ ~ ~ ~ ~ ~ ~ 319 ~
execute if predicate anc:inoverworld run execute store result score #dist3 ancValue run loot insert ~ 319 ~ loot anc:machines/character/01
execute if predicate anc:inoverworld run setblock ~ 319 ~ shulker_box
execute unless predicate anc:inoverworld run clone ~ ~ ~ ~ ~ ~ ~ 255 ~
execute unless predicate anc:inoverworld run execute store result score #dist3 ancValue run loot insert ~ 255 ~ loot anc:machines/character/01
execute unless predicate anc:inoverworld run setblock ~ 255 ~ shulker_box
execute if score #dist3 ancValue matches 1 run function anc:machines/dist/dist
execute if score #dc ancValue matches 1.. run function anc:machines/dist/dist_one
execute if predicate anc:inoverworld run setblock ~ 319 ~ air
execute unless predicate anc:inoverworld run setblock ~ 255 ~ air
