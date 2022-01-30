execute store success score @s ancProtectSuccess if predicate anc:machines/interact_machine/glass_pane as @e[type=#anc:item_frame,tag=!anc_block,nbt={Fixed:0b},limit=1,distance=..10,sort=random] if score @s ancHealth matches ..75 run function anc:machines/interact_machine/interact/protect/on
execute if score @s ancProtectSuccess matches 1 run function anc:machines/interact_machine/clear/glass_pane
scoreboard players reset @s ancProtectSuccess

execute store success score @s ancProtectSuccess if predicate anc:machines/interact_machine/quartz as @e[type=#anc:item_frame,tag=!anc_block,nbt={Fixed:1b},limit=1,distance=..10,sort=random] if score @s ancHealth matches ..75 run function anc:machines/interact_machine/interact/protect/off
execute if score @s ancProtectSuccess matches 1 run function anc:machines/interact_machine/clear/quartz
scoreboard players reset @s ancProtectSuccess
