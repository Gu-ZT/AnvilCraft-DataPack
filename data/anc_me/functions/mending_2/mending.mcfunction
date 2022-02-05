execute store result score #amDamage ancValue run data get entity @s Item.tag.Damage

execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:experience_bottle",Count:32b}}] run scoreboard players operation #amDamage ancValue -= $448 ancValue
execute if score #amDamage ancValue matches 1.. store result entity @s Item.tag.Damage int 1 run scoreboard players get #amDamage ancValue
execute if score #amDamage ancValue matches ..0 run data remove entity @s Item.tag.Damage
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:experience_bottle",Count:32b}},limit=1]
