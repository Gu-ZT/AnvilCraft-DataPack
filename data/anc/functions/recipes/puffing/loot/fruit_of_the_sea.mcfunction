function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",tag:{CustomModelData:11140011,id:'anc:fruit_of_the_sea',display:{Name:'{"italic":false,"translate":"anc.item.fruit_of_the_sea.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:fruit_of_the_sea"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
