data modify storage anc:temp Items set from block ~ ~ ~ Items
data remove storage anc:dist Item
data modify storage anc:dist Item.id set value "minecraft:glass_bottle"
execute store result storage anc:dist Item.Count byte 1 run data remove storage anc:temp Items[{id:"minecraft:potion"}]
function anc:machines/dist/machine
loot give @p loot anc:craft_machine/items/glass_bottle
