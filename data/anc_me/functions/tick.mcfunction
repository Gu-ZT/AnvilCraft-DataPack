# 玩家tick
execute as @a at @s run function anc_me:tick/player
# 引雷2
execute as @e[type=trident] at @s if data entity @s Trident.tag.Enchantments.[{id:"minecraft:channeling",lvl:2}] run function anc_me:channeling_2
# 以箭为执行者
function anc_me:arrow/type
# execute as @e[type=!#anc:not_kill] run function anc_me:tick/mob
# execute as @e[type=player] run function anc_me:tick/mob
