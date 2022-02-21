execute if score $ancSingleLand ancConfig matches 0 run tag @s add non_is

execute if score $ancSingleLand ancConfig matches 0 run summon armor_stand ~ ~ ~ {Tags:[isTemp],Invisible:true}
execute if score $ancSingleLand ancConfig matches 0 run execute as @e[type=armor_stand,tag=isTemp] at @s run function anc_is:land/as

execute if score @s ancUid matches 1 positioned 1000 64 0 run function anc_is:land/spawn_land
execute unless score $ancSingleLand ancConfig matches 0 run tp @s 1000 64 0 ~ ~
execute unless score $ancSingleLand ancConfig matches 0 run spreadplayers 1000 0 0 3 false @s

scoreboard players enable @s skyland.visit
scoreboard players enable @s skyland

tag @s add ancIs
