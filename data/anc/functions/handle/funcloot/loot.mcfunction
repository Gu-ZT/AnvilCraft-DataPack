# 输入 执行位置  storage anc:temp input[]{id,tag,Count}

function anc:handle/funcloot/read
data remove storage anc:temp input[0]
execute if data storage anc:temp input[0] run function anc:handle/funcloot/loot
