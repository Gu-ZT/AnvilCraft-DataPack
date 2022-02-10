function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:light_weighted_pressure_plate",Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:light_weighted_pressure_plate"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
