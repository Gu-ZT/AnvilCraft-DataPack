#sch233

execute if predicate anc:blocks/new/craft_machine run setblock ~ ~ ~ minecraft:command_block{Command:"function anc:blocks/craft_machine/set",auto:1b}
execute if predicate anc:blocks/new/interact_machine run setblock ~ ~ ~ minecraft:command_block{Command:"function anc:blocks/interact_machine/set",auto:1b}
execute if predicate anc:blocks/new/magnet run setblock ~ ~ ~ minecraft:command_block{Command:"function anc:blocks/magnet/set",auto:1b}

scoreboard players remove #distance ancValue 1
execute if score #distance ancValue matches 1.. positioned ^ ^ ^0.2 run function anc:blocks/loop_to_barrel