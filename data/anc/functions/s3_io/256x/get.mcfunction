# input: scb(addr tmp)
# output: scb(succ tmp)
#         storage temp obj
# 把storage temp 256x.(addr tmp) 读取到storage temp obj
scoreboard players set #oper tmp 0
data remove storage temp obj
function anc:s3_io/256x/4/0