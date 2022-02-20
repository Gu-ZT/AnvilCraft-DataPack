# 输入 执行位置  storage anc:temp input[0]{id,tag}  scb #Count ancValue in(0,65)
summon item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",Count:1b},Tags:["new"]}
execute as @e[type=item,predicate=anc:handle/funcloot/new,distance=..0.5,sort=nearest,limit=1] run function anc:handle/funcloot/spawn/set
