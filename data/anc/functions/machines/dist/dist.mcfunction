data remove block ~ 319 ~ Items
data modify block ~ 319 ~ Items append from storage anc:dist Item
execute store result block ~ 319 ~ Items[0].Count byte 1 run scoreboard players get #dc ancValue
loot insert ~ ~ ~ mine ~ 319 ~ tnt{drop_content:1b}
scoreboard players set #dc ancValue 0
data modify storage anc:dist Item.Count set value 0b
