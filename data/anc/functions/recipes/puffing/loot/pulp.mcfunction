function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",tag:{CustomModelData:11140067,id:'anc:pulp',display:{Name:'{"italic":false,"translate":"anc.item.pulp.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:firework_star"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
