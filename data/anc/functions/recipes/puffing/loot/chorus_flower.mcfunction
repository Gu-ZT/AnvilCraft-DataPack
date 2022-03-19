function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:chorus_flower",Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:chorus_flower"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
