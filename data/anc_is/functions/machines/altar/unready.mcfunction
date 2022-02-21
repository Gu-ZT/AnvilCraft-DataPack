execute as @s at @s align xyz positioned ~-2 ~ ~-2 as @e[dx=4,dz=4,dy=0,tag=aiAltarSlot] at @s run summon item ~ ~0.7 ~ {Item:{id:"stone",Count:1b}}
execute as @s at @s align xyz positioned ~-2 ~ ~-2 as @e[dx=4,dz=4,dy=0,tag=aiAltarSlot] at @s positioned ~ ~1 ~ align xyz if entity @e[type=item,limit=1,sort=nearest,dx=0,dy=0,dz=0,tag=!SlotOut] run function anc_is:machines/altar/slot
execute as @s at @s align xyz positioned ~-2 ~ ~-2 run kill @e[dx=4,dz=4,dy=0,tag=aiAltarSlot]
data modify entity @s Item.tag.CustomModelData set value 11142054
tag @s remove anc_altar_reday
