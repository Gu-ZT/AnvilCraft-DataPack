execute if entity @e[type=item,nbt={Item: {id: "minecraft:anvil", Count: 1b}},distance=..1] run loot spawn ~ ~ ~ loot anc:altar
execute store success entity @s Item.tag.ancCraftSuccess int 1 run kill @e[type=item,nbt={Item: {id: "minecraft:anvil", Count: 1b}},distance=..1,limit=1]
kill @s[nbt={Item: {tag: {ancCraftSuccess: 1}}}]
