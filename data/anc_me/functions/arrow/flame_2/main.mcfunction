execute store success score @s ancValue run tp @s @e[tag=amFlame_2,sort=nearest,limit=1]
execute if entity @e[tag=amFlame_2,sort=nearest,limit=1,nbt={inGround:1b}] run kill @s
execute if score @s ancValue matches 0 as @e[type=!#anc:not_kill,type=!area_effect_cloud,sort=nearest,limit=1] run data modify entity @s Fire set value 200
execute if score @s ancValue matches 0 run kill @s