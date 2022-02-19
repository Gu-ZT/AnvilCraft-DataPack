# 生成掉落物
loot spawn ~ -65 ~ loot anc:random/random
# 获取随机数
execute positioned ~ -65 ~ store result score $output ancRandom run data get entity @e[type=minecraft:item,nbt={Item:{tag:{ancRandomMarker:1b}}},limit=1,distance=..1] Item.tag.AttributeModifiers[0].Amount 1
# 移除掉落物
execute positioned ~ -65 ~ run kill @e[type=minecraft:item,nbt={Item:{tag:{randomMarker:1b}}},distance=..1]
