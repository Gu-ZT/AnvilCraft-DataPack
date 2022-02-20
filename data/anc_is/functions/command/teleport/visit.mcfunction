# 标记玩家
tag @s add aiTpPlayer
gamemode spectator @s
# 生成as
summon armor_stand ~ ~ ~ {Tags:["aiTpVisit"]}
# 寻找传送点
data modify storage anc:s3_io obj set value {}
scoreboard players operation addr tmp = @s skyland.visit
function anc:s3_io/get
data modify storage anc:temp skyland.Pos set from storage anc:s3_io obj.skyland.Pos
# 传送玩家
execute as @e[tag=aiTpVisit] at @s run function anc_is:command/teleport/tp_yes/tp
# 重置计分板
scoreboard players reset @s skyland.visit
# 启用返回指令
scoreboard players enable @s skyland.home
scoreboard players enable @s skyland.visit
