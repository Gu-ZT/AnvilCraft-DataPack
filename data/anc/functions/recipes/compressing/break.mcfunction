tp @s ~ ~-1 ~
execute as @e[type=minecraft:item,predicate=anc:compressing,distance=..1.5] at @s run function anc:recipes/compressing/loot
execute as @e[type=minecraft:item,nbt={Item:{tag:{id:"anc:tear_of_the_sea"}}}] at @s run function anc:recipes/compressing/tear_of_the_sea_loot
function #anc:recipes/compressing
kill @s
