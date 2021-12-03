execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:experience_bottle",Count:32b}}] run scoreboard players operation @s amDamage -= $448 amDamage
execute if score @s amDamage matches 1.. store result entity @s Item.tag.Damage int 1 run scoreboard players get @s amDamage
execute if score @s amDamage matches ..0 run data remove entity @s Item.tag.Damage
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:experience_bottle",Count:32b}},limit=1]
