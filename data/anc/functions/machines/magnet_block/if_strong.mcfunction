# if 磁铁强充能

# 检测下方是否有铁砧实体，用于且仅用于下方的if判断
execute store success score #check ancValue if entity @e[type=falling_block,dx=0,dz=0,dy=-4]
# 如果没有铁砧实体，且下方有铁砧方块，set air 且在下方召唤铁砧实体
execute if score #check ancValue matches 0 positioned ~.5 ~ ~.5 if predicate anc:magnet_block/anvil_block run function anc:machines/magnet_block/start
# 如果没有铁砧实体且没有铁砧方块，显然不需要处理

# 如果有铁砧实体，并且在下落中，传送上来且重置Time,NoGravity和Motion
execute if score $ancAttractingFalling ancConfig matches 1 if score #check ancValue matches 1 as @e[type=falling_block,dx=0,dz=0,dy=-4,sort=nearest,limit=1] unless data entity @s {NoGravity:1b} positioned ~.5 ~ ~.5 run function anc:machines/magnet_block/keep
# 如果有铁砧实体且没有下落，显然不需要处理