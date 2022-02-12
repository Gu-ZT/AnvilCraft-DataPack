# 输入并输出 #honeyCount #bottleCount
# 每次减少 #exe_count,输出#Count
scoreboard players remove #exe_count ancValue 1
scoreboard players remove #honeyCount ancValue 1
scoreboard players remove #bottleCount ancValue 4
scoreboard players add #Count ancValue 1
execute if score #exe_count ancValue matches 1.. if score #honeyCount ancValue matches 1.. if score #bottleCount ancValue matches 4.. run function anc:recipes/cutting/honey/loop