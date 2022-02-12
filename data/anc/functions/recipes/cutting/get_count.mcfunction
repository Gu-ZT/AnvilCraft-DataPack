# 输入#Count(材料数) 和 #exe_count(执行数)
# 输出#cost(用于生成的材料数) 和 #left(材料剩余) 和减小的#exe_count(执行数)

# 消耗材料数 = min{#Count, #exe_count}
scoreboard players operation #cost ancValue = #Count ancValue
scoreboard players operation #cost ancValue < #exe_count ancValue
# 剩余 = #Count - #cost
scoreboard players operation #left ancValue = #Count ancValue
scoreboard players operation #left ancValue -= #cost ancValue
# 
scoreboard players operation #exe_count ancValue -= #cost ancValue
