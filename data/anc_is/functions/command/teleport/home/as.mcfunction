# 传送
data modify entity @s Pos[0] set from storage anc:temp skyland.x
data modify entity @s Pos[1] set from storage anc:temp skyland.y
data modify entity @s Pos[2] set from storage anc:temp skyland.z
# 传送玩家
spreadplayers ~ ~ 0 3 false @a[tag=aiTpHomePlayer,limit=1]
tag @a[tag=aiTpHomePlayer,limit=1] remove aiTpHomePlayer
# 清理实体
kill @s
