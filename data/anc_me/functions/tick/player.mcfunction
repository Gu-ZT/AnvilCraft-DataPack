execute if score @s amBow matches 1.. run function anc_me:bow/type
scoreboard players reset @s amBow
execute if entity @s[tag=!UUID] run function anc_me:tick/player_get_uuid

# 水下速掘2
execute if predicate anc_me:aqua_affinity_2 run effect give @s haste 3 1 true