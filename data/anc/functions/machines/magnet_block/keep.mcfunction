tp @s ~ ~-1 ~
data modify entity @s NoGravity set value 1b
data modify entity @s Time set value -2147483648
data modify entity @s Motion set value [0.0d,0.1d,0.0d]
playsound minecraft:block.anvil.land block @a ~ ~ ~
