# 以每种物品中的每个物品为执行者，输入剩余的可执行数(#exe_count ancValue)和上次余下的物品数(#exe_left ancValue)，以及多少个物品执行一次(#exe_once ancValue)，
# 保留余下的物品数量，保留剩余的可执行数,增加执行数(#Count ancValue)

# 此次物品总数 = (input)物品数量+(input)上次余下的物品数量
# 物品能执行总数 = 此次物品总数//(input)(物品数per执行)
# (output)增加的执行数 = min{物品能执行总数, (input)剩余可执行数}
# (output)剩下的可执行数 = 剩余可执行数-增加的执行数
# (output)余下的物品数量 = 此次物品总数 - 增加的执行数*(物品数per执行)
execute store result score #item_count ancValue run data get entity @s Item.Count

# 计算此次物品总数: #this_sum = #item_count + #exe_left
scoreboard players operation #this_sum ancValue = #item_count ancValue
scoreboard players operation #this_sum ancValue += #exe_left ancValue
# 物品能执行总数: #this_exe_count = #this_sum // #exe_once
scoreboard players operation #this_exe_count ancValue = #this_sum ancValue
scoreboard players operation #this_exe_count ancValue /= #exe_once ancValue
# 增加的执行数: #add = min{#this_exe_count, #exe_count}
scoreboard players operation #add ancValue = #this_exe_count ancValue
scoreboard players operation #add ancValue < #exe_count ancValue
# 剩下的可执行数: #exe_count = #exe_count - #add
scoreboard players operation #exe_count ancValue -= #add ancValue
# 余下的物品数量: #exe_left = #this_sum - #add * #exe_once
scoreboard players operation # ancValue = #add ancValue
scoreboard players operation # ancValue *= #exe_once ancValue
scoreboard players operation #exe_left ancValue = #this_sum ancValue
scoreboard players operation #exe_left ancValue -= # ancValue


# 增加执行数
scoreboard players operation #Count ancValue += #add ancValue
# 清除
kill @s