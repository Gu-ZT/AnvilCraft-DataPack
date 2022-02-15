scoreboard players operation $ancMending2 ancValue /= $ancExperienceRepair ancConfig
summon item ~ ~ ~ {Item:{id:"minecraft:experience_bottle",Count:1b},Tags:["ancMending"]}
execute store result entity @e[type=item,tag=ancMending,limit=1] Item.Count int 1 run scoreboard players get $ancMending2 ancValue
