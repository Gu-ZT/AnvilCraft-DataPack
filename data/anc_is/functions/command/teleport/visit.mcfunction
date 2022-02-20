execute if score @s skyland.visit > $usedUid ancUid run tellraw @s [{"translate":"anc.skyland.visit.warning"}]

# 标记玩家
execute unless score @s skyland.visit > $usedUid ancUid run tag @s add aiTpPlayer
execute unless score @s skyland.visit > $usedUid ancUid run gamemode spectator @s
# 生成as
execute unless score @s skyland.visit > $usedUid ancUid run summon armor_stand ~ ~ ~ {Tags:["aiTpVisit"]}
# 寻找传送点
execute unless score @s skyland.visit > $usedUid ancUid run data modify storage anc:s3_io obj set value {}
execute unless score @s skyland.visit > $usedUid ancUid run scoreboard players operation addr tmp = @s skyland.visit
execute unless score @s skyland.visit > $usedUid ancUid run function anc:s3_io/get
execute unless score @s skyland.visit > $usedUid ancUid run data modify storage anc:temp skyland.Pos set from storage anc:s3_io obj.skyland.Pos
# 传送玩家
execute unless score @s skyland.visit > $usedUid ancUid run execute as @e[tag=aiTpVisit] at @s run function anc_is:command/teleport/tp_yes/tp
# 启用返回指令
execute unless score @s skyland.visit > $usedUid ancUid run scoreboard players enable @s skyland.home
# 重置计分板
scoreboard players reset @s skyland.visit
scoreboard players enable @s skyland.visit
