execute if score $ancSingleLand ancConfig matches 0 run tag @s add non_is

execute if score $ancSingleLand ancConfig matches 0 run summon armor_stand ~ ~ ~ {Tags:[isTemp],Invisible:true}
execute if score $ancSingleLand ancConfig matches 0 run execute as @e[type=armor_stand,tag=isTemp] at @s run function anc_is:land/as

execute unless score $ancSingleLand ancConfig matches 0 run tp @s 0 64 0 ~ ~
execute unless score $ancSingleLand ancConfig matches 0 run spreadplayers ~ ~ 0 20 false @s

tag @s add ancIs
