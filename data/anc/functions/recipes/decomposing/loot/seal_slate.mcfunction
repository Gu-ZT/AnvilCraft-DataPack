scoreboard players remove $ancTemp ancItemCount 1

execute if entity @s[nbt={Item:{tag:{id:"anc:seal_slate_fire"}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["sealFire","ancSeal"],Color:2763306,Duration:2147438647,Particle:"cloud",Radius:0.01f}
execute if entity @s[nbt={Item:{tag:{id:"anc:seal_slate_poison"}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["sealPoison","ancSeal"],Color:2763306,Duration:2147438647,Particle:"cloud",Radius:0.01f}
execute if entity @s[nbt={Item:{tag:{id:"anc:seal_slate_shadow"}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["sealShadow","ancSeal"],Color:2763306,Duration:2147438647,Particle:"cloud",Radius:0.01f}
execute if entity @s[nbt={Item:{tag:{id:"anc:seal_slate_soul"}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["sealSoul","ancSeal"],Color:2763306,Duration:2147438647,Particle:"cloud",Radius:0.01f}
execute if entity @s[nbt={Item:{tag:{id:"anc:seal_slate_water"}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["sealWater","ancSeal"],Color:2763306,Duration:2147438647,Particle:"cloud",Radius:0.01f}

execute store result score $outCount ancItemCount run data get entity @s Item.Count
scoreboard players operation $outCount ancItemCount -= 1 int
execute store result entity @s Item.Count int 1 run scoreboard players get $outCount ancItemCount
execute if score $ancTemp ancItemCount matches 1.. if score $outCount ancItemCount matches 1.. run function anc:recipes/decomposing/loot/seal_slate
