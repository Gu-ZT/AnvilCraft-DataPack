tellraw @a {"translate":"anc.trader.coming","with":[{"nbt":"Pos","entity":"@s","color":"green"}],"color": "gold"}
execute as @a at @s run playsound minecraft:trader.coming player @s
tag @s add ancWanderingTrader
