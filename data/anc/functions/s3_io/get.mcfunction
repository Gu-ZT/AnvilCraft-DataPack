# input: scb(addr tmp)
# output: scb(succ tmp)
#         storage anc:s3_io obj
# 把storage anc:s3_io 256x4.(addr tmp) 读取到storage anc:s3_io obj

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

data remove storage anc:s3_io 256x

# 把256x3段从256x4中取出来
# 256x3 = 256x4
data modify storage anc:s3_io 256x set from storage anc:s3_io io
# obj = 256x.(i///)
scoreboard players operation addr tmp = addr/// tmp
function anc:s3_io/256x/get
# 256x = obj
data modify storage anc:s3_io 256x set from storage anc:s3_io obj

# 再取
# obj = 256x.(i//%)
scoreboard players operation addr tmp = addr//% tmp
function anc:s3_io/256x/get
# 256x = obj
data modify storage anc:s3_io 256x set from storage anc:s3_io obj

# 再取
# obj = 256x.(i/%)
scoreboard players operation addr tmp = addr/% tmp
function anc:s3_io/256x/get
# 256x = obj
data modify storage anc:s3_io 256x set from storage anc:s3_io obj

# 再取
# obj = 256x.(i%)
scoreboard players operation addr tmp = addr% tmp
function anc:s3_io/256x/get

scoreboard players operation addr tmp = #addr tmp