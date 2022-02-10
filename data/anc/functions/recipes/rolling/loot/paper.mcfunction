function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:paper",Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:paper"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
