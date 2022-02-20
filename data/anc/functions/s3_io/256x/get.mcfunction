# input: scb(addr tmp)
# output: scb(succ tmp)
#         storage anc:temp obj
# 把storage anc:temp 256x.(addr tmp) 读取到storage anc:temp obj
scoreboard players set #oper tmp 0
data remove storage anc:temp obj
function anc:s3_io/256x/4/0