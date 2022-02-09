function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",tag:{ancTearSuccess:0,CustomModelData:11140013,id:'anc:tear_of_the_sea',display:{Name:'{"italic":false,"translate":"anc.item.tear_of_the_sea.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:tear_of_the_sea"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
