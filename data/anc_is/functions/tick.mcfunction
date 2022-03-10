execute positioned 0 64 0 as @a[distance=..20] at @s run function anc_is:command/teleport/home

function #anc_is:machines

execute as @a[scores={aiFart=1..}] at @s run function anc_is:handle/fart

execute as @e[type=item,nbt={Item:{id:"minecraft:petrified_oak_slab",Count:1b}}] at @s if block ~ ~ ~ composter align xyz if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},dx=0,dy=0,dz=0] run function anc_is:handle/craft_machine

execute as @a[scores={skyland=1..}] run function anc_is:command/skyland
execute as @a[scores={skyland.home=1..}] run function anc_is:command/teleport/home
execute as @a[scores={skyland.visit=1..}] run function anc_is:command/teleport/visit

execute as @e[type=endermite] at @s if block ~ ~-1 ~ purpur_block run function anc_is:handle/shulker
