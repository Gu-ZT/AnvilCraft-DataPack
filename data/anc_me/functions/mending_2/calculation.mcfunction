execute store result score $ancMending ancValue run data get entity @s Item.Count
scoreboard players operation $ancMending2 ancValue = $ancMending ancValue
scoreboard players operation $ancMending2 ancValue *= $ancExperienceRepair ancConfig
kill @s
