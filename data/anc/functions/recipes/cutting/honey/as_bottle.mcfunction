execute store result score #add ancValue run data get entity @s Item.Count
scoreboard players operation #bottleCount ancValue += #add ancValue
tag @s add anc.killed
kill @s