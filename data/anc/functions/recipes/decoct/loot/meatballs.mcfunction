function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:cooked_porkchop",tag:{CustomModelData:11140041,id:'anc:meatballs',display:{Name:'{"italic":false,"translate":"anc.item.meatballs.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:meatballs"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
