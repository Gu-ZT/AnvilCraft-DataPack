# 步数减1
scoreboard players remove $step aiValue 1
# 如果步数小于等于0，则层步减1
execute if score $step aiValue matches ..0 run scoreboard players remove $layerStep aiValue 1
# 如果步数小于等于0，更换方向
execute if score $step aiValue matches ..0 if score $direction aiValue matches 1..4 run scoreboard players add $direction aiValue 1
execute unless score $direction aiValue matches 1..4 run scoreboard players set $direction aiValue 1
# 如果层步小于等于0，层数加1
execute if score $layerStep aiValue matches ..0 run scoreboard players add $layer aiValue 1
# 如果层步小于等于0，重置层步为2
execute if score $layerStep aiValue matches ..0 run scoreboard players set $layerStep aiValue 2
# 如果步数小于等于0，重置步数为层数
execute if score $step aiValue matches ..0 run scoreboard players operation $step aiValue = $layer aiValue

# 步进
execute if score $direction aiValue matches 1 run scoreboard players add $x aiValue 1
execute if score $direction aiValue matches 2 run scoreboard players remove $z aiValue 1
execute if score $direction aiValue matches 3 run scoreboard players remove $x aiValue 1
execute if score $direction aiValue matches 4 run scoreboard players add $z aiValue 1

# 坐标扩大1000倍
scoreboard players operation $real_x aiValue = 1000 int
scoreboard players operation $real_x aiValue *= $x aiValue
scoreboard players operation $real_z aiValue = 1000 int
scoreboard players operation $real_z aiValue *= $z aiValue
