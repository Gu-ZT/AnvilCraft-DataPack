execute if score $ancSingleLand ancConfig matches 0 run tag @s add non_is

execute if score @s ancUid matches 1 run tp @s 0 64 0 ~ ~
execute if score @s ancUid matches 1 run function anc_is:spawn_land
execute if score @s ancUid matches 1 if score $ancSingleLand ancConfig matches 0 run tag @s remove non_is

execute unless score @s ancUid matches 1 if score $ancSingleLand ancConfig matches 0 run summon armor_stand ~ ~ ~ {Tags:[isTemp],Invisible:true}
execute unless score @s ancUid matches 1 if score $ancSingleLand ancConfig matches 0 run execute as @e[type=armor_stand,tag=isTemp] at @s run function anc_is:as

execute unless score @s ancUid matches 1 unless score $ancSingleLand ancConfig matches 0 run tp @s 0 64 0 ~ ~
execute unless score @s ancUid matches 1 unless score $ancSingleLand ancConfig matches 0 run spreadplayers ~ ~ 0 20 false @s

tag @s add ancIs
