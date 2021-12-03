clone ~ ~ ~ ~ ~ ~ ~ 319 ~
execute store result score #dist3 ancValue run loot insert ~ 319 ~ loot anc:machines/character/01
setblock ~ 319 ~ shulker_box
execute if score #dist3 ancValue matches 1 run function anc:machines/dist/dist
execute if score #dc ancValue matches 1.. run function anc:machines/dist/dist_one
setblock ~ 319 ~ air
