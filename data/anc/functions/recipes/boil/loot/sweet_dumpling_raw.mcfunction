function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:cooked_chicken",tag:{CustomModelData:11140053,id:'anc:sweet_dumpling',display:{Name:'{"italic":false,"translate":"anc.item.sweet_dumpling.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:sweet_dumpling"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
