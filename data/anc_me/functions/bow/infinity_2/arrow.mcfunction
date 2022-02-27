tag @s add am_arrow
data modify entity @s pickup set value 2b
execute if entity @s[type=spectral_arrow] run summon item ~ ~ ~ {Tags:["am_spectral"],PickupDelay:0,Item:{id:"spectral_arrow",Count:1b},NoGravity:1b}
execute if entity @s[type=spectral_arrow] run data modify entity @e[type=item,limit=1,tag=am_spectral,sort=nearest] Owner set from entity @s Owner
execute if data entity @s[type=arrow] Potion run summon item ~ ~ ~ {Tags:["am_potion"],PickupDelay:0,Item:{id:"arrow",Count:1b},NoGravity:1b}
execute if data entity @s Potion run data modify entity @e[type=item,limit=1,tag=am_potion,sort=nearest] Owner set from entity @s Owner
execute if data entity @s Potion run data modify entity @e[type=item,limit=1,tag=am_potion,sort=nearest] Item.tag.Potion set from entity @s Potion
execute if data entity @s CustomPotionEffects run data modify entity @e[type=item,limit=1,tag=am_potion,sort=nearest] Item.tag.CustomPotionEffects set from entity @s CustomPotionEffects
