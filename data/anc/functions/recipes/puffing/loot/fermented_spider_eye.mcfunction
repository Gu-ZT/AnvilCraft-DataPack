function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:fermented_spider_eye",Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
