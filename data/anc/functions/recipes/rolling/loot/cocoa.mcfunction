function anc:handle/count_reduce
scoreboard players operation $ancTemp_ ancItemCount = $ancTemp ancItemCount
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",tag:{CustomModelData:11140045,id:'anc:cocoa_powder',display:{Name:'{"italic":false,"translate":"anc.item.cocoa_powder.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:cocoa_powder"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
scoreboard players operation $ancTemp ancItemCount = $ancTemp_ ancItemCount
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",tag:{CustomModelData:11140044,id:'anc:cocoa_butter',display:{Name:'{"italic":false,"translate":"anc.item.cocoa_butter.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:cocoa_butter"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
