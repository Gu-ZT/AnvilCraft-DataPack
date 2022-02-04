function anc:tick/experience_orb

execute if predicate anc:machines/interact_machine/glass_bottle if entity @e[type=experience_orb,limit=1,distance=..10,sort=nearest] run function anc:machines/interact_machine/interact/absorb/exp
execute if predicate anc:machines/interact_machine/glass_bottle store success score @s ancAbsorbSuccess if data block ~ ~ ~ Items.[{Slot:25b,tag:{ancClear:1b}}] if score @s ancExpValue matches 9.. run scoreboard players remove @s ancExpValue 9
execute if predicate anc:machines/interact_machine/glass_bottle if score @s ancAbsorbSuccess matches 1 run item replace block ~ ~ ~ container.25 with experience_bottle
execute if predicate anc:machines/interact_machine/glass_bottle if score @s ancAbsorbSuccess matches 1 run function anc:machines/interact_machine/clear/glass_bottle
scoreboard players reset @s ancAbsorbSuccess
