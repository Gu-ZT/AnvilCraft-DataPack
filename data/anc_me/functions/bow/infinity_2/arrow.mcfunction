tag @s add am_arrow
data modify entity @s pickup set value 2b
execute if entity @s[type=spectral_arrow] run summon spectral_arrow ~ ~ ~ {Tags:["am_arrow"],shake:0b,pickup:1b,inGround:1b}
execute if data entity @s Potion run summon arrow ~ ~ ~ {Tags:["am_arrow","am_potion"],shake:0b,pickup:1b,inGround:1b}
execute if data entity @s Potion run data modify entity @e[type=arrow,limit=1,tag=am_potion,sort=nearest] Potion set from entity @s Potion
