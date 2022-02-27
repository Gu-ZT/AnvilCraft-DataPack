scoreboard players set # ancValue 0
execute as @e[type=experience_orb,limit=1,distance=..10,sort=nearest] run function anc:machines/interact_machine/interact/absorb/getvalue
scoreboard players operation @s ancExpValue += # ancValue

execute store success score $Absorb ancSuccess if data block ~ ~ ~ Items.[{Slot:25b,tag:{ancClear:1b}}] if score @s ancExpValue matches 9.. run scoreboard players remove @s ancExpValue 9
execute if score $Absorb ancSuccess matches 1 run item replace block ~ ~ ~ container.25 with experience_bottle
execute if score $Absorb ancSuccess matches 1 run function anc:machines/interact_machine/clear/glass_bottle