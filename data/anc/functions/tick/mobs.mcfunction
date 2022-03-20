# 随机数最小值预设
scoreboard players set $min ancRandom 0

# 精英怪生成
# 菜鸟模式
    execute if score $ancRookieMode ancConfig matches 1 if score $ancHatred ancValue matches ..39 run tag @s add ancNotInfernal
    execute if score $ancRookieMode ancConfig matches 1 run scoreboard players set $max ancRandom 300
    # 生成随机数
    execute if score $ancRookieMode ancConfig matches 1 if score $ancHatred ancValue matches 40.. run function anc:handle/random
    execute if score $ancRookieMode ancConfig matches 1 if score $ancHatred ancValue matches 40..80 if score $output ancRandom > $ancHatred ancValue run tag @s add ancNotInfernal
    execute if score $ancRookieMode ancConfig matches 1 if score $ancHatred ancValue matches 81.. if score $output ancRandom matches 80.. run tag @s add ancNotInfernal
# 菜鸟模式（关）
    execute unless score $ancRookieMode ancConfig matches 1 if score $ancHatred ancValue matches ..24 run tag @s add ancNotInfernal
    execute unless score $ancRookieMode ancConfig matches 1 run scoreboard players set $max ancRandom 150
    # 生成随机数
    execute unless score $ancRookieMode ancConfig matches 1 if score $ancHatred ancValue matches 25.. run function anc:handle/random
    execute unless score $ancRookieMode ancConfig matches 1 if score $ancHatred ancValue matches 25..55 if score $output ancRandom > $ancHatred ancValue run tag @s add ancNotInfernal
    execute unless score $ancRookieMode ancConfig matches 1 if score $ancHatred ancValue matches 56.. if score $output ancRandom matches 55.. run tag @s add ancNotInfernal
execute if entity @s[tag=!ancInfernal,tag=!ancNotInfernal] run function anc:infernal_mobs/infernal

tag @s add ancMob
