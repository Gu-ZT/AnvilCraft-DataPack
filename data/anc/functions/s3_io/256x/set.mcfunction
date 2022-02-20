# input: scb(addr tmp)
#       storage anc:temp obj
# output: scb(succ tmp)
# 把 storage anc:temp obj 存入到 storage anc:temp 256x.(addr tmp)，并返回data set 是否成功到(succ tmp)
scoreboard players set #oper tmp 1
function anc:s3_io/256x/4/0