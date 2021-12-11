execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items
execute if predicate anc:inoverworld run data modify block ~ 319 ~ Items append from storage anc:dist Item
execute if predicate anc:inoverworld run execute store result block ~ 319 ~ Items[0].Count byte 1 run scoreboard players get #dc ancValue
execute if predicate anc:inoverworld run loot insert ~ ~ ~ mine ~ 319 ~ tnt{drop_content:1b}
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items
execute unless predicate anc:inoverworld run data modify block ~ 255 ~ Items append from storage anc:dist Item
execute unless predicate anc:inoverworld run execute store result block ~ 255 ~ Items[0].Count byte 1 run scoreboard players get #dc ancValue
execute unless predicate anc:inoverworld run loot insert ~ ~ ~ mine ~ 255 ~ tnt{drop_content:1b}
scoreboard players set #dc ancValue 0
data modify storage anc:dist Item.Count set value 0b
