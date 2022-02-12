# 输入#Count #multi #exe_count
# 输出 减少的#exe_count #make #left
# 生成的数量 =  min{#Count//#multi, #exe_count}
scoreboard players operation #make ancValue = #Count ancValue
scoreboard players operation #make ancValue /= #multi ancValue
scoreboard players operation #make ancValue < #exe_count ancValue

# 剩下的数量 = #Count - #make * #multi
scoreboard players operation # ancValue = #make ancValue
scoreboard players operation # ancValue *= #multi ancValue
scoreboard players operation #left ancValue = #Count ancValue
scoreboard players operation #left ancValue -= # ancValue

# 处理#exe_count = #exe_count - #make
scoreboard players operation #exe_count ancValue -= #make ancValue