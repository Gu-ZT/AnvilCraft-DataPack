scoreboard players set $min ancRandom 0
scoreboard players set $min ancRandom 1000
function anc:handle/random

scoreboard players add ancLotteryPurpleTimes ancValue 1
scoreboard players add ancLotteryGoldTimes ancValue 1

# 基础概率
    execute unless score ancLotteryPurpleTimes ancValue matches 80 unless score ancLotteryGoldTimes ancValue matches 180 if score $output ancRandom matches 0..4 run tag @s add ancGlodUp
    execute unless score ancLotteryPurpleTimes ancValue matches 80 unless score ancLotteryGoldTimes ancValue matches 180 if score $output ancRandom matches 5..9 run tag @s add ancGlodNormal
    execute unless score ancLotteryPurpleTimes ancValue matches 80 unless score ancLotteryGoldTimes ancValue matches 180 if score $output ancRandom matches 10..99 run tag @s add ancPurple
    execute unless score ancLotteryPurpleTimes ancValue matches 80 unless score ancLotteryGoldTimes ancValue matches 180 if score $output ancRandom matches 100..1000 run tag @s add ancGreen

    
# 保底机制
    execute if score ancLotteryPurpleTimes ancValue matches 80 run tag @s add ancPurple
    execute if score ancLotteryPurpleTimes ancValue matches 80 if score ancLotteryGoldTimes ancValue matches 180 run tag @s remove ancPurple
    execute if score ancLotteryPurpleTimes ancValue matches 80 if score ancLotteryGoldTimes ancValue matches 180 run scoreboard players reset ancLotteryPurpleTimes ancValue
    execute if score ancLotteryGoldTimes ancValue matches 180 if score $output ancRandom matches 0..500 run tag @s add ancGlodUp
    execute if score ancLotteryGoldTimes ancValue matches 180 if score $output ancRandom matches 501..1000 run tag @s add ancGlodNormal
    execute if entity @s[tag=ancPurple] run scoreboard players reset ancLotteryPurpleTimes ancValue
    execute if entity @s[tag=ancGlodNormal] run scoreboard players reset ancLotteryGoldTimes ancValue
    execute if entity @s[tag=ancGlodUp] run scoreboard players reset ancLotteryGoldTimes ancValue

# UP机制
    execute if entity @s[tag=ancGlodNormal] run scoreboard players add ancGoldTimes ancValue 1
    execute if entity @s[tag=ancGlodNormal] if score ancGoldTimes ancValue matches 2.. run tag @s add ancGlodUp
    execute if entity @s[tag=ancGlodNormal] if score ancGoldTimes ancValue matches 2.. run tag @s remove ancGlodNormal
    execute if entity @s[tag=ancGlodUp] run scoreboard players reset ancGoldTimes ancValue

# 颜色
    execute if entity @s[tag=sealFire] if entity @s[tag=ancGreen] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGreen","ancSeal","sealFire"],Color:5635925,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealFire] if entity @s[tag=ancPurple] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancPurple","ancSeal","sealFire"],Color:11141290,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealFire] if entity @s[tag=ancGlodNormal] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodNormal","ancSeal","sealFire"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealFire] if entity @s[tag=ancGlodUp] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodUp","ancSeal","sealFire"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    
    execute if entity @s[tag=sealPoison] if entity @s[tag=ancGreen] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGreen","ancSeal","sealPoison"],Color:5635925,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealPoison] if entity @s[tag=ancPurple] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancPurple","ancSeal","sealPoison"],Color:11141290,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealPoison] if entity @s[tag=ancGlodNormal] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodNormal","ancSeal","sealPoison"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealPoison] if entity @s[tag=ancGlodUp] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodUp","ancSeal","sealPoison"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    
    execute if entity @s[tag=sealShadow] if entity @s[tag=ancGreen] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGreen","ancSeal","sealShadow"],Color:5635925,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealShadow] if entity @s[tag=ancPurple] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancPurple","ancSeal","sealShadow"],Color:11141290,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealShadow] if entity @s[tag=ancGlodNormal] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodNormal","ancSeal","sealShadow"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealShadow] if entity @s[tag=ancGlodUp] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodUp","ancSeal","sealShadow"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    
    execute if entity @s[tag=sealSoul] if entity @s[tag=ancGreen] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGreen","ancSeal","sealSoul"],Color:5635925,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealSoul] if entity @s[tag=ancPurple] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancPurple","ancSeal","sealSoul"],Color:11141290,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealSoul] if entity @s[tag=ancGlodNormal] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodNormal","ancSeal","sealSoul"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealSoul] if entity @s[tag=ancGlodUp] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodUp","ancSeal","sealSoul"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    
    execute if entity @s[tag=sealWater] if entity @s[tag=ancGreen] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGreen","ancSeal","sealWater"],Color:5635925,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealWater] if entity @s[tag=ancPurple] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancPurple","ancSeal","sealWater"],Color:11141290,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealWater] if entity @s[tag=ancGlodNormal] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodNormal","ancSeal","sealWater"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    execute if entity @s[tag=sealWater] if entity @s[tag=ancGlodUp] run summon area_effect_cloud ~ ~ ~ {Tags:["ancColorTemp","ancGlodUp","ancSeal","sealWater"],Color:16754177,Duration:2147438647,Particle:"minecraft:dust",Radius:0.01f}
    scoreboard players operation @e[tag=ancColorTemp,limit=1] ancValue = @s ancValue
    kill @s
