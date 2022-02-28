scoreboard players operation $amVar amUUID0 = @s amUUID0
scoreboard players operation $amVar amUUID1 = @s amUUID1
scoreboard players operation $amVar amUUID2 = @s amUUID2
scoreboard players operation $amVar amUUID3 = @s amUUID3

execute as @e[type=#arrows,distance=..3,tag=!am_arrow] run function anc_me:handle/arrow_get_uuid

execute as @e[type=#arrows,distance=..3,tag=!am_arrow] if score @s amUUID0 = $amVar amUUID0 if score @s amUUID1 = $amVar amUUID1 if score @s amUUID2 = $amVar amUUID2 if score @s amUUID3 = $amVar amUUID3 run function anc_me:bow/infinity_2/arrow

advancement revoke @s only anc_me:enchantments/infinity_2
