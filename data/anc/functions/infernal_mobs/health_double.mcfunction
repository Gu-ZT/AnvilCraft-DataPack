execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 2.0 run data get entity @s Health
execute store result entity @s Health float 2.0 run data get entity @s Health
scoreboard players add @s ancInfernalLevel 15
