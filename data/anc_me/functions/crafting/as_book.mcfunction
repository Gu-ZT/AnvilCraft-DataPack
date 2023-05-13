data remove storage anc:temp enchant_list
data modify storage anc:temp enchant_list set from entity @s Item.tag.StoredEnchantments
tag @s add amCrafting
execute if data storage anc:temp enchant_list[{id:"minecraft:mending",lvl:1s}] run function anc_me:crafting/enchanted_book/mending_2
execute if data storage anc:temp enchant_list[{id:"minecraft:infinity",lvl:1s}] run function anc_me:crafting/enchanted_book/infinity_2
execute if data storage anc:temp enchant_list[{id:"minecraft:flame",lvl:1s}] run function anc_me:crafting/enchanted_book/flame_2
execute if data storage anc:temp enchant_list[{id:"minecraft:channeling",lvl:1s}] run function anc_me:crafting/enchanted_book/channeling_2
execute if data storage anc:temp enchant_list[{id:"minecraft:aqua_affinity",lvl:1s}] run function anc_me:crafting/enchanted_book/aqua_affinity_2
execute if data storage anc:temp enchant_list[{id:"minecraft:silk_touch",lvl:1s}] run function anc_me:crafting/enchanted_book/silk_touch_2
execute if data storage anc:temp enchant_list[{id:"minecraft:bane_of_arthropods",lvl:5s}] run function anc_me:crafting/enchanted_book/bane_of_arthropods_6
execute if data storage anc:temp enchant_list[{id:"minecraft:efficiency",lvl:5s}] run function anc_me:crafting/enchanted_book/efficiency_6
execute if data storage anc:temp enchant_list[{id:"minecraft:fire_aspect",lvl:2s}] run function anc_me:crafting/enchanted_book/fire_aspect_3
execute if data storage anc:temp enchant_list[{id:"minecraft:fortune",lvl:3s}] run function anc_me:crafting/enchanted_book/fortune_4
execute if data storage anc:temp enchant_list[{id:"minecraft:impaling",lvl:5s}] run function anc_me:crafting/enchanted_book/impaling_6
execute if data storage anc:temp enchant_list[{id:"minecraft:knockback",lvl:2s}] run function anc_me:crafting/enchanted_book/knockback_3
execute if data storage anc:temp enchant_list[{id:"minecraft:looting",lvl:3s}] run function anc_me:crafting/enchanted_book/looting_4
execute if data storage anc:temp enchant_list[{id:"minecraft:loyalty",lvl:3s}] run function anc_me:crafting/enchanted_book/loyalty_4
execute if data storage anc:temp enchant_list[{id:"minecraft:luck_of_the_sea",lvl:3s}] run function anc_me:crafting/enchanted_book/luck_of_the_sea_4
execute if data storage anc:temp enchant_list[{id:"minecraft:lure",lvl:3s}] run function anc_me:crafting/enchanted_book/lure_4
execute if data storage anc:temp enchant_list[{id:"minecraft:piercing",lvl:4s}] run function anc_me:crafting/enchanted_book/piercing_5
execute if data storage anc:temp enchant_list[{id:"minecraft:power",lvl:5s}] run function anc_me:crafting/enchanted_book/power_6
execute if data storage anc:temp enchant_list[{id:"minecraft:punch",lvl:2s}] run function anc_me:crafting/enchanted_book/punch_3
execute if data storage anc:temp enchant_list[{id:"minecraft:quick_charge",lvl:3s}] run function anc_me:crafting/enchanted_book/quick_charge_4
execute if data storage anc:temp enchant_list[{id:"minecraft:riptide",lvl:3s}] run function anc_me:crafting/enchanted_book/riptide_4
execute if data storage anc:temp enchant_list[{id:"minecraft:sharpness",lvl:5s}] run function anc_me:crafting/enchanted_book/sharpness_6
execute if data storage anc:temp enchant_list[{id:"minecraft:smite",lvl:5s}] run function anc_me:crafting/enchanted_book/smite_6
execute if data storage anc:temp enchant_list[{id:"minecraft:sweeping",lvl:3s}] run function anc_me:crafting/enchanted_book/sweeping_4
execute if data storage anc:temp enchant_list[{id:"minecraft:unbreaking",lvl:3s}] run function anc_me:crafting/enchanted_book/unbreaking_4
execute if data storage anc:temp enchant_list[{id:"minecraft:blast_protection",lvl:4s}] run function anc_me:crafting/enchanted_book/blast_protection_5
execute if data storage anc:temp enchant_list[{id:"minecraft:depth_strider",lvl:3s}] run function anc_me:crafting/enchanted_book/depth_strider_4
execute if data storage anc:temp enchant_list[{id:"minecraft:feather_falling",lvl:4s}] run function anc_me:crafting/enchanted_book/feather_falling_5
execute if data storage anc:temp enchant_list[{id:"minecraft:fire_protection",lvl:4s}] run function anc_me:crafting/enchanted_book/fire_protection_5
execute if data storage anc:temp enchant_list[{id:"minecraft:frost_walker",lvl:2s}] run function anc_me:crafting/enchanted_book/frost_walker_3
execute if data storage anc:temp enchant_list[{id:"minecraft:projectile_protection",lvl:4s}] run function anc_me:crafting/enchanted_book/projectile_protection_5
execute if data storage anc:temp enchant_list[{id:"minecraft:protection",lvl:4s}] run function anc_me:crafting/enchanted_book/protection_5
execute if data storage anc:temp enchant_list[{id:"minecraft:respiration",lvl:3s}] run function anc_me:crafting/enchanted_book/respiration_4
execute if data storage anc:temp enchant_list[{id:"minecraft:thorns",lvl:3s}] run function anc_me:crafting/enchanted_book/thorns_4
execute if data storage anc:temp enchant_list[{id:"minecraft:soul_speed",lvl:3s}] run function anc_me:crafting/enchanted_book/soul_speed_4
execute if data storage anc:temp enchant_list[{id:"minecraft:swift_sneak",lvl:3s}] run function anc_me:crafting/enchanted_book/swift_sneak_4
tag @s remove amCrafting