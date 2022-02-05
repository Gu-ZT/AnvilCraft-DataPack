scoreboard players operation @s ancHealth += $25 ancHealth
execute store result entity @s Health int 1 run scoreboard players get @s ancHealth
execute at @s positioned ~ ~2.5 ~ run particle minecraft:heart ~ ~ ~ 0 0 0 0 0 force