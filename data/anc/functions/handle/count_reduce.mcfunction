execute store result score $ancProcessingCount ancItemCount run data get entity @s Item.Count
scoreboard players operation $ancTemp2 ancItemCount = $ancTemp ancItemCount
execute if score $ancProcessingCount ancItemCount < $ancTemp2 ancItemCount run function anc:handle/count_reduce/unless
execute if score $ancProcessingCount ancItemCount >= $ancTemp2 ancItemCount run function anc:handle/count_reduce/if
