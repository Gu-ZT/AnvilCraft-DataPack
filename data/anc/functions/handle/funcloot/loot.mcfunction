# 输入 执行位置  storage temp input[]{id,tag,Count}

function anc:handle/funcloot/read
data remove storage temp input[0]
execute if data storage temp input[0] run function anc:handle/funcloot/loot
