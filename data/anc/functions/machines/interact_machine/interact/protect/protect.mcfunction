function anc:handle/gethealth

execute store success score $Protect ancSuccess if predicate anc:machines/interact_machine/glass_pane as @e[type=#anc:item_frame,tag=!anc_block,nbt={Fixed:0b},limit=1,distance=..10,sort=random] run function anc:machines/interact_machine/interact/protect/on
execute if score $Protect ancSuccess matches 1 run function anc:machines/interact_machine/clear/glass_pane
scoreboard players reset $Protect ancSuccess

execute store success score $Protect ancSuccess if predicate anc:machines/interact_machine/quartz as @e[type=#anc:item_frame,tag=!anc_block,nbt={Fixed:1b},limit=1,distance=..10,sort=random] run function anc:machines/interact_machine/interact/protect/off
execute if score $Protect ancSuccess matches 1 run function anc:machines/interact_machine/clear/quartz
scoreboard players reset $Protect ancSuccess
