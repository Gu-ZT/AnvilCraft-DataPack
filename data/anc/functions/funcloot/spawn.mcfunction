# 输入 执行位置  storage temp input[0]{id,tag}  scb #Count ancValue in(0,65)
summon item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",Count:1b},Tags:["new"]}
execute as @e[type=item,predicate=anc:funcloot/new,distance=..0.5,sort=nearest,limit=1] run function anc:funcloot/spawn/set