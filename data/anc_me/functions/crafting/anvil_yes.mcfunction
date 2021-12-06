data modify entity @s Item.tag.Enchantments append from entity @e[type=item,limit=1,tag=amCrafting,nbt={Item:{id:"minecraft:enchanted_book"}},distance=..1] Item.tag.StoredEnchantments.[]

scoreboard players operation @s amRepairCost *= $2 amRepairCost
scoreboard players operation @s amRepairCost += $1 amRepairCost
execute store result entity @s Item.tag.RepairCost int 1 run scoreboard players get @s amRepairCost
