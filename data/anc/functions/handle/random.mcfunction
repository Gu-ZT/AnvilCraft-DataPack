# 输入 $min,$max ancRandom 输出 $output ancRandom
# 包含端点，不改变输入

# 整数范围随机
# 若没有初始化，初始化
execute unless score #seed.lo16 ancValue matches -2147483648..2147483647 run function anc:handle/random/init
# 整数范围内随机,输出#output ancValue
function anc:handle/random/rand

# 取范围
# 确保大小
execute store success score #if_reverse ancValue if score $min ancRandom > $max ancRandom
execute if score #if_reverse ancValue matches 1 run scoreboard players operation $min ancRandom >< $max ancRandom
# 由于包含端点，随机范围+1
scoreboard players operation #range ancValue = $max ancRandom
scoreboard players operation #range ancValue -= $min ancRandom
scoreboard players add #range ancValue 1

# 取值
scoreboard players operation $output ancRandom = #output ancValue
scoreboard players operation $output ancRandom %= #range ancValue
scoreboard players operation $output ancRandom += $max ancRandom