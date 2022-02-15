execute store result score #amDamage ancValue run data get entity @s Item.tag.Damage
execute as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:experience_bottle"}},limit=1] run function anc_me:mending_2/calculation
scoreboard players operation #amDamage2 ancValue = #amDamage ancValue
scoreboard players operation #amDamage2 ancValue -= $ancMending2 ancValue
scoreboard players operation $ancMending2 ancValue -= #amDamage ancValue
execute if score #amDamage2 ancValue matches ..0 run data modify entity @s Item.tag.Damage set value 0
execute unless score #amDamage2 ancValue matches ..0 store result entity @s Item.tag.Damage int 1 run scoreboard players get #amDamage2 ancValue
execute if score $ancMending2 ancValue > $ancExperienceRepair ancConfig run function anc_me:mending_2/return
#function anc_me:mending_2/reset
