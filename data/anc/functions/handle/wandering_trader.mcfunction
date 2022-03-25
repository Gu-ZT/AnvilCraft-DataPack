tellraw @a {"translate":"anc.trader.coming","with":[{"nbt":"Pos","entity":"@s","color":"green"}],"color": "gold"}
execute if score $ancReminderVoice ancConfig matches 1 as @a at @s run playsound minecraft:trader.coming player @s
tag @s add ancWanderingTrader
