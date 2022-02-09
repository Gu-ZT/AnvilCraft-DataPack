function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:suspicious_stew",tag:{CustomModelData:11140042,id:'anc:beef_mushroom_stew',display:{Name:'{"italic":false,"translate":"anc.item.beef_mushroom_stew.name"}'},Effects:[{EffectId:23b,EffectDuration:1200}]},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:beef_mushroom_stew"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
