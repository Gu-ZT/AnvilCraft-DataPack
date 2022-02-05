data modify entity @s Item.tag.Enchantments append from entity @e[type=item,limit=1,tag=amCrafting,nbt={Item:{id:"minecraft:enchanted_book"}},distance=..1] Item.tag.StoredEnchantments.[]

scoreboard players operation #amRepairCost ancValue *= $2 ancValue
scoreboard players operation #amRepairCost ancValue += $1 ancValue
execute store result entity @s Item.tag.RepairCost int 1 run scoreboard players get #amRepairCost ancValue
