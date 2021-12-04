execute store result score @s testX run data get entity @s Pos.[0] 100
execute store result score @s testY run data get entity @s Pos.[1] 100
execute store result score @s testZ run data get entity @s Pos.[2] 100
tellraw @a [{"score":{"name":"@s","objective":"testX"}},{"text": " "},{"score":{"name":"@s","objective":"testY"}},{"text": " "},{"score":{"name":"@s","objective":"testZ"}}]

