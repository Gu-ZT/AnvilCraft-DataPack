# 标记玩家
tag @s add aiTpPlayer
# 生成as
summon marker ~ ~ ~ {Tags:["aiTpHome"],NoGravity:1b}
# 寻找传送点
data modify storage anc:s3_io obj set value {}
scoreboard players operation addr tmp = @s ancUid
function anc:s3_io/get
data modify storage anc:temp skyland.Pos set from storage anc:s3_io obj.skyland.Pos
# 传送玩家
execute as @e[tag=aiTpHome] at @s run function anc_is:command/teleport/tp_yes/tp
gamemode survival @s
scoreboard players reset @s skyland.home
