execute as @e[type=item,distance=..1.5] if data entity @s Item.tag.Enchantments.[{id:"minecraft:mending",lvl:2s}] at @s if data entity @s Item.tag.Damage run function anc_me:mending_2/mending
