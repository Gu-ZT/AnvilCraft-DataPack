function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",tag:{CustomModelData:11140031,id:'anc:dough',display:{Name:'{"italic":false,"translate":"anc.item.dough.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:dough"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
