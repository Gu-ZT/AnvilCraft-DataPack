# 输入 执行位置  storage temp input[0]{id,tag,Count}
execute store result score #left ancValue run data get storage temp input[0].Count

scoreboard players operation #64x ancValue = #left ancValue
scoreboard players operation #64x ancValue /= $64 ancValue

scoreboard players operation #left ancValue %= $64 ancValue

scoreboard players operation #Count ancValue = #left ancValue
execute if score #Count ancValue matches 1.. run function anc:funcloot/spawn

execute if score #64x ancValue matches 1.. run function anc:funcloot/read/loop