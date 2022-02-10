function anc:handle/count_reduce
scoreboard players operation $ancTemp_ ancItemCount = $ancTemp ancItemCount
summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_shard",Count:1b}}
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
scoreboard players operation $ancTemp ancItemCount = $ancTemp_ ancItemCount
summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_shard",Count:1b}}
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
scoreboard players operation $ancTemp ancItemCount = $ancTemp_ ancItemCount
summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_shard",Count:1b}}
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
scoreboard players operation $ancTemp ancItemCount = $ancTemp_ ancItemCount
summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_shard",Count:1b}}
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
scoreboard players operation $ancTemp ancItemCount = $ancTemp_ ancItemCount
summon item ~ ~ ~ {Item:{id:"minecraft:heart_of_the_sea",Count:1b}}
execute as @e[type=item,nbt={Item:{id:"minecraft:heart_of_the_sea"}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
