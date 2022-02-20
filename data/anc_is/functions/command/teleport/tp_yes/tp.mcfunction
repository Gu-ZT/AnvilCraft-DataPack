# 传送
data modify entity @s Pos[0] set from storage anc:temp skyland.Pos[0]
data modify entity @s Pos[1] set from storage anc:temp skyland.Pos[1]
data modify entity @s Pos[2] set from storage anc:temp skyland.Pos[2]
# 传送玩家
spreadplayers ~ ~ 0 3 false @a[tag=aiTpPlayer,limit=1]
tag @a[tag=aiTpPlayer,limit=1] remove aiTpPlayer
# 清理实体
kill @s
