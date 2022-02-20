# input: scb(#addr tmp)
#       storage anc:s3_io obj
# output: scb(succ tmp)
# 把 storage anc:s3_io obj 存入到 storage anc:s3_io 256x4.(#addr tmp)，并返回data set 是否成功到(succ tmp)

# 获取各分位的值
scoreboard players operation #addr tmp = addr tmp

## 若是负数则改变一下符号位
execute if score #addr tmp matches ..-1 run scoreboard players operation addr tmp += -2147483648 int

scoreboard players operation addr% tmp = addr tmp
scoreboard players operation addr% tmp %= 256 int

scoreboard players operation addr tmp /= 256 int
scoreboard players operation addr/% tmp = addr tmp
scoreboard players operation addr/% tmp %= 256 int

scoreboard players operation addr tmp /= 256 int
scoreboard players operation addr//% tmp = addr tmp
scoreboard players operation addr//% tmp %= 256 int
scoreboard players operation addr/// tmp = addr tmp
scoreboard players operation addr/// tmp /= 256 int

## 把改变的符号位补回来
execute if score #addr tmp matches ..-1 run scoreboard players add addr/// tmp 128

# 暂存一下obj
# obj_tmp = obj
data modify storage anc:s3_io obj_tmp set from storage anc:s3_io obj

# 存进去
# 256x.(i%) = obj
scoreboard players operation addr tmp = addr% tmp
data remove storage anc:s3_io 256x
function anc:s3_io/256x/set
# obj = 256x.(i%)
data modify storage anc:s3_io obj set from storage anc:s3_io 256x

# 再存
scoreboard players operation addr tmp = addr/% tmp
data remove storage anc:s3_io 256x
function anc:s3_io/256x/set
# obj = 256x.(i/%)
data modify storage anc:s3_io obj set from storage anc:s3_io 256x

# 再存
scoreboard players operation addr tmp = addr//% tmp
data remove storage anc:s3_io 256x
function anc:s3_io/256x/set
# obj = 256x.(i//%)
data modify storage anc:s3_io obj set from storage anc:s3_io 256x

# 再存
scoreboard players operation addr tmp = addr/// tmp
data remove storage anc:s3_io 256x
function anc:s3_io/256x/set
# obj = 256x.(i///)
data modify storage anc:s3_io io merge from storage anc:s3_io 256x

scoreboard players operation addr tmp = #addr tmp
data modify storage anc:s3_io obj set from storage anc:s3_io obj_tmp