scoreboard players operation $amVar amSelfUUID0 = @s amSelfUUID0
scoreboard players operation $amVar amSelfUUID1 = @s amSelfUUID1
scoreboard players operation $amVar amSelfUUID2 = @s amSelfUUID2
scoreboard players operation $amVar amSelfUUID3 = @s amSelfUUID3

execute as @e[type=#arrows,distance=..3,tag=!am_arrow] if score @s amOwnerUUID0 = $amVar amSelfUUID0 if score @s amOwnerUUID1 = $amVar amSelfUUID1 if score @s amOwnerUUID2 = $amVar amSelfUUID2 if score @s amOwnerUUID3 = $amVar amSelfUUID3 run function anc_me:bow/infinity_2/arrow
