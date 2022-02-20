scoreboard players set $min ancRandom 0
scoreboard players set $max ancRandom 100
function anc:handle/random
execute if score $output ancRandom matches 10..20 if data entity @s SelectedItem anchored eyes run summon item ^ ^ ^2 {Item:{id:"minecraft:stone",Count:1b},Tags:["ancStickyLoot"]}
execute if score $output ancRandom matches 10..20 if data entity @s SelectedItem run data modify entity @e[tag=ancStickyLoot,limit=1,sort=nearest] Item.Count set from entity @s SelectedItem.Count
execute if score $output ancRandom matches 10..20 if data entity @s SelectedItem run data modify entity @e[tag=ancStickyLoot,limit=1,sort=nearest] Item.id set from entity @s SelectedItem.id
execute if score $output ancRandom matches 10..20 if data entity @s SelectedItem run data modify entity @e[tag=ancStickyLoot,limit=1,sort=nearest] Item.tag set from entity @s SelectedItem.tag
execute if score $output ancRandom matches 10..20 if data entity @s SelectedItem run tag @e[tag=ancStickyLoot,limit=1,sort=nearest] remove ancStickyLoot
execute if score $output ancRandom matches 10..20 if data entity @s SelectedItem run item replace entity @s weapon with air
advancement revoke @s only anc:infernal_mobs/sticky
