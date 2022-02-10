function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",tag:{CustomModelData:11140032,id:'anc:flatdough',display:{Name:'{"italic":false,"translate":"anc.item.flatdough.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:flatdough"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
