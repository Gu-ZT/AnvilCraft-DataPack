function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:horn_coral_block",Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:horn_coral_block"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
