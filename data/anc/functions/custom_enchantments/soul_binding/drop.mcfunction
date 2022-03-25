execute store result score #inoverworld ancValue if predicate anc:inoverworld

data remove storage anc:temp ItemsTemp
data modify storage anc:temp ItemsTemp set from entity @s Inventory
function anc:custom_enchantments/soul_binding/clear

execute if score #inoverworld ancValue matches 1 run setblock ~ 319 ~ shulker_box
execute unless score #inoverworld ancValue matches 1 run setblock ~ 255 ~ shulker_box

execute if score #inoverworld ancValue matches 1 run function anc:custom_enchantments/soul_binding/drop/319
execute unless score #inoverworld ancValue matches 1 run function anc:custom_enchantments/soul_binding/drop/255

execute if score #inoverworld ancValue matches 1 run setblock ~ 319 ~ air
execute unless score #inoverworld ancValue matches 1 run setblock ~ 255 ~ air
