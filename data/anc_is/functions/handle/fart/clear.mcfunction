scoreboard players reset @s aiValue
scoreboard players reset @s aiFart
execute if block ~ ~ ~ composter if predicate anc:random/1_3 run function anc_is:handle/fart/compost
scoreboard players add @s aiViscousBond 1
execute if score @s[tag=!ancViscousBond] aiViscousBond matches 5.. run tag @s add ancViscousBond
