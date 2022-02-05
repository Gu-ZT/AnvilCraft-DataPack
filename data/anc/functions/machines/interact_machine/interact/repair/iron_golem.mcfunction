function anc:entities/gethealth
execute if score @s ancHealth matches ..75 run scoreboard players set #succeed ancValue 1
execute if score @s ancHealth matches ..75 run function anc:machines/interact_machine/interact/repair/iron_golem_

