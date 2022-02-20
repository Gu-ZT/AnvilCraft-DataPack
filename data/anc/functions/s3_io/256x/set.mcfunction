# input: scb(addr tmp)
#       storage anc:s3_io obj
# output: scb(succ tmp)
# 把 storage anc:s3_io obj 存入到 storage anc:s3_io 256x.(addr tmp)，并返回data set 是否成功到(succ tmp)
scoreboard players set #oper tmp 1
function anc:s3_io/256x/4/0