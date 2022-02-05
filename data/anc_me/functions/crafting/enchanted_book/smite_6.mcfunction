execute store success score #check_enchantbook ancValue run kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:smite",lvl:5s}]}}},tag=!amCrafting,limit=1]
execute if score #check_enchantbook ancValue matches 1 run data modify entity @s Item.tag.StoredEnchantments.[{id:"minecraft:smite"}].lvl set value 6s

