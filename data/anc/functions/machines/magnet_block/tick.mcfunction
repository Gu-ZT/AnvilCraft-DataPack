# 检测充能，用于且仅用于下面的2行if判断
execute store success score #is_strong ancValue if predicate anc:strong
# 如果被充能
execute if score #is_strong ancValue matches 1 align xyz run function anc:machines/magnet_block/if_strong
# 如果没有充能，且上一刻是充能，使下方铁砧实体下降
execute if score #is_strong ancValue matches 0 if score @s ancTempStrong matches 1 align xyz as @e[type=falling_block,dx=0,dy=-1,dz=0] run data modify entity @s NoGravity set value 0b
# 如果这一刻和上一刻没有充能，或者符合条件但下方没有铁砧实体，显然不需要处理

# 保存充能状态，用于且仅用于上一行检测
scoreboard players operation @s ancTempStrong = #is_strong ancValue