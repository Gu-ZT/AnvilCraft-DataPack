execute if entity @s[tag=!amChanneling,nbt={inGround:1b}] run summon lightning_bolt ~ ~ ~
execute if entity @s[tag=!amChanneling,nbt={inGround:1b}] run tag @s add amChanneling
execute if entity @s[tag=amChanneling,nbt={inGround:0b}] run tag @s remove amChanneling
