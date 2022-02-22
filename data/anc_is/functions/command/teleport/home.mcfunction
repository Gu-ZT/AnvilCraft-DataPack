# 标记玩家
tag @s add aiTpPlayer
# 生成as
summon marker ~ ~ ~ {Tags:["aiTpHome"],NoGravity:1b}
# 寻找传送点
execute if data entity @s SpawnX run data modify storage anc:temp skyland.Pos[0] set from entity @s SpawnX
execute if data entity @s SpawnY run data modify storage anc:temp skyland.Pos[1] set from entity @s SpawnY
execute if data entity @s SpawnZ run data modify storage anc:temp skyland.Pos[2] set from entity @s SpawnZ
execute unless data entity @s SpawnX run data modify storage anc:s3_io obj set value {}
execute unless data entity @s SpawnX run scoreboard players operation addr tmp = @s ancUid
execute unless data entity @s SpawnX run function anc:s3_io/get
execute unless data entity @s SpawnX run data modify storage anc:temp skyland.Pos set from storage anc:s3_io obj.skyland.Pos
# 传送玩家
execute as @e[tag=aiTpHome] at @s run function anc_is:command/teleport/tp_yes/tp
gamemode survival @s
scoreboard players reset @s skyland.home
