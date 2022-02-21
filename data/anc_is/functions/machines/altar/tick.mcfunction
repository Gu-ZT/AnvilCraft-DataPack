execute as @e[tag=anc_altar,tag=!anc_altar_reday] at @s unless predicate anc_is:altar run function anc_is:machines/altar/ready
execute as @e[tag=anc_altar,tag=anc_altar_reday] at @s if predicate anc_is:altar run function anc_is:machines/altar/unready
execute as @e[tag=aiAltarSlot] at @s positioned ~ ~1 ~ align xyz if entity @e[type=item,limit=1,sort=nearest,dx=0,dy=0,dz=0,tag=!SlotOut] run function anc_is:machines/altar/slot
execute as @e[tag=aiAltarSlot] at @s run tp @s ~ ~ ~ ~1 ~
