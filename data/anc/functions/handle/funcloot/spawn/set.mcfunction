# 输入 执行位置  storage anc:temp input[0]{id,tag}  scb #Count ancValue
data modify entity @s Item.id set from storage anc:temp input[0].id
data modify entity @s Item.tag set from storage anc:temp input[0].tag
execute store result entity @s Item.Count byte 1 run scoreboard players get #Count ancValue