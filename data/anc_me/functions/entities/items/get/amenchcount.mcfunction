#sch233

execute store result score #amEnchCount ancValue run data get entity @s Item.tag.Enchantments
execute if data entity @s Item.tag.StoredEnchantments store result score #amEnchCount ancValue run data get entity @s Item.tag.StoredEnchantments