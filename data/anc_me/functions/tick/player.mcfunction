execute if score @s amBow matches 1.. run function anc_me:bow/type
scoreboard players reset @s amBow
execute store result score @s amSelfUUID0 run data get entity @s UUID.[0]
execute store result score @s amSelfUUID1 run data get entity @s UUID.[1]
execute store result score @s amSelfUUID2 run data get entity @s UUID.[2]
execute store result score @s amSelfUUID3 run data get entity @s UUID.[3]