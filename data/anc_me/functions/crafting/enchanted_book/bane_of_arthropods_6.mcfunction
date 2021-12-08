tag @s add amCrafting
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:5s}]}}},tag=!amCrafting] run data modify entity @s Item.tag.StoredEnchantments.[{id:"minecraft:bane_of_arthropods"}].lvl set value 6s
execute as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:5s}]}}},tag=!amCrafting] at @s run kill @s
