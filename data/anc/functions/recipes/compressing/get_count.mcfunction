# 生成的数量
scoreboard players operation @s ancItemCount = #Count ancValue
scoreboard players operation @s ancItemCount /= #multi ancValue
# 剩下的数量
scoreboard players operation @s ancValue = #Count ancValue
scoreboard players operation @s ancValue %= #multi ancValue