execute as @s at @s positioned ~ ~1 ~ align xyz run data modify storage anc:altar_slot Item set value {}
execute as @s at @s positioned ~ ~1 ~ align xyz run data modify storage anc:altar_slot Item set from entity @s ArmorItems[3]
execute as @s at @s positioned ~ ~1 ~ align xyz run data modify entity @s ArmorItems[3] set from entity @e[type=item,limit=1,sort=nearest,dx=0,dy=0,dz=0,tag=!SlotOut] Item
execute as @s at @s positioned ~ ~1 ~ align xyz run data modify entity @e[type=item,limit=1,sort=nearest,dx=0,dy=0,dz=0,tag=!SlotOut] Item set from storage anc:altar_slot Item
execute as @s at @s positioned ~ ~1 ~ align xyz run tag @e[type=item,limit=1,sort=nearest,dx=0,dy=0,dz=0,tag=!SlotOut] add SlotOut
