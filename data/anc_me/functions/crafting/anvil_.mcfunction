function anc_me:entities/items/get/amenchcount
execute store result score #amRepairCost ancValue run data get entity @s Item.tag.RepairCost



scoreboard players operation #base ancValue += #amEnchCount ancValue

execute unless score #base ancValue matches 9.. run scoreboard players set #check ancValue 1


execute unless score #base ancValue matches 9.. if score #amRepairCost ancValue matches 26.. if predicate anc:random/1_5 run function anc_me:crafting/anvil_yes
execute unless score #base ancValue matches 9.. if score #amRepairCost ancValue matches 11..25 if predicate anc:random/1_3 run function anc_me:crafting/anvil_yes
execute unless score #base ancValue matches 9.. if score #amRepairCost ancValue matches 0..10 if predicate anc:random/1_2 run function anc_me:crafting/anvil_yes
