scoreboard players operation $outCount ancItemCount = $ancTemp ancItemCount
scoreboard players operation $ancProcessingCount ancItemCount -= $ancTemp ancItemCount
execute store result entity @s Item.Count int 1 run scoreboard players get $ancProcessingCount ancItemCount
