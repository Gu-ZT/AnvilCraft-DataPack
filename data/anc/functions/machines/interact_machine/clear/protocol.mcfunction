execute unless score @s ancSuccess matches 1 store success score @s ancSuccess if data block ~ ~ ~ Items[{Slot:1b}] if data block ~ ~ ~ Items.[{Slot:1b,tag:{dict:["protocol"]}}] run item modify block ~ ~ ~ container.1 anc:reduce1
scoreboard players reset @s ancSuccess
