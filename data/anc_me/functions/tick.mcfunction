execute as @e[type=#arrows] at @s run function anc_me:tick/arrow
execute as @a at @s run function anc_me:tick/player
execute as @e[type=item] at @s if data entity @s Item.tag.Damage run function anc_me:tick/item_damage
execute as @e[type=item] at @s unless data entity @s Item.tag.Damage run scoreboard players set @s amDamage 0
execute as @e[type=item] at @s if data entity @s Item.tag.RepairCost run function anc_me:tick/item_repair_cost
execute as @e[type=item] at @s unless data entity @s Item.tag.RepairCost run scoreboard players set @s amRepairCost 0
execute as @e[type=trident,tag=!amChanneling,nbt={inGround:1b}] at @s if data entity @s Trident.tag.Enchantments.[{id:"minecraft:channeling",lvl:2s}] run function anc_me:channeling_2
execute as @a if predicate anc_me:aqua_affinity_2 run effect give @s haste 3 1 true
function anc_me:arrow/type
execute as @e[type=!#anc:not_kill] run function anc_me:tick/mob
execute as @e[type=player] run function anc_me:tick/mob
