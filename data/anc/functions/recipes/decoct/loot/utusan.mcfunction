function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:dried_kelp",tag:{CustomModelData:11140050,id:'anc:utusan',display:{Name:'{"italic":false,"translate":"anc.item.utusan.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:shengjian"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
