function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:red_mushroom_block",Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom_block"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
