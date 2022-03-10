data modify entity @s Item.tag.Enchantments append from entity @e[type=item,limit=1,tag=amCrafting,nbt={Item:{id:"minecraft:enchanted_book"}},distance=..1] Item.tag.StoredEnchantments.[]
data modify entity @s Item.tag.ancCustomEnchantments append from entity @e[type=item,limit=1,tag=amCrafting,nbt={Item:{id:"minecraft:enchanted_book"}},distance=..1] Item.tag.ancCustomEnchantments.[]
data modify entity @s Item.tag.display.Lore append from entity @e[type=item,limit=1,tag=amCrafting,nbt={Item:{id:"minecraft:enchanted_book"}},distance=..1] Item.tag.display.Lore.[]

scoreboard players operation #amRepairCost ancValue *= 2 int
scoreboard players operation #amRepairCost ancValue += 1 int
execute store result entity @s Item.tag.RepairCost int 1 run scoreboard players get #amRepairCost ancValue
scoreboard players add $ancHatred ancValue 1
advancement grant @a[advancements={anc:anc/enchantments=false},limit=1,sort=nearest] only anc:anc/enchantments
