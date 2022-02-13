# 寻找对应的铁砧，传送并读取falldistance，
# 同时用tag对aec进行唯一性标记
scoreboard players operation #t ancAnvil = @s ancAnvil
tag @s add anc_temp_aec
    scoreboard players set #ifAnvil ancValue 0
    scoreboard players set #fallDistance ancValue 0
    execute as @e[type=minecraft:falling_block,tag=anc_marked] if score @s ancAnvil = #t ancAnvil run function anc:handle/compare

    # 若检测不到铁砧
    execute if score #ifAnvil ancValue matches 0 at @s run function anc:tick/hit
tag @s remove anc_temp_aec