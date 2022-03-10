tp @s ~ ~0.1 ~
scoreboard players add @s ancValue 1
execute store result entity @s Air int 1 run scoreboard players get @s ancValue
execute if score @s[tag=!ancColorTemp] ancValue matches 12 run function anc:items/seal_slate/color
execute if score @s ancValue matches 18.. run function anc:items/seal_slate/open
