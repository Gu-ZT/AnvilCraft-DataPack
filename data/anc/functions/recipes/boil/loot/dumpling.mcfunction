function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:cooked_salmon",tag:{CustomModelData:11140043,id:'anc:dumpling',display:{Name:'{"italic":false,"translate":"anc.item.dumpling.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:dumpling"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
