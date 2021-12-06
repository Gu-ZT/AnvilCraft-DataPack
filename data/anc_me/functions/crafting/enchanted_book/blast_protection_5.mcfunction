tag @s add amCrafting
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:blast_protection",lvl:4s}]}}},tag=!amCrafting] run data modify entity @s Item.tag.StoredEnchantments.[{id:"minecraft:blast_protection"}].lvl set value 3s
execute as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:blast_protection",lvl:4s}]}}},tag=!amCrafting] at @s run kill @s
