# input: scb(addr tmp)
# output: scb(succ tmp)
#         storage anc:s3_io obj
# 把storage anc:s3_io 256x.(addr tmp) 读取到storage anc:s3_io obj
scoreboard players set #oper tmp 0
data remove storage anc:s3_io obj
function anc:s3_io/256x/4/0