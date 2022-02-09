execute store success score #is_strong ancValue if predicate anc:strong
execute if score #is_strong ancValue matches 1 align xyz run function anc:machines/magnet_block/if_strong
execute if score #is_strong ancValue matches 0 if score @s ancTempStrong matches 1 align xyz as @e[type=falling_block,dx=0,dy=-1,dz=0] run data modify entity @s NoGravity set value 0b

scoreboard players operation @s ancTempStrong = #is_strong ancValue