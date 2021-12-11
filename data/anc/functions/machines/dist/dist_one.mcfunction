execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items
execute if predicate anc:inoverworld run data modify block ~ 319 ~ Items append from storage anc:dist Item
execute if predicate anc:inoverworld run item modify block ~ 319 ~ container.0 anc:one
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items
execute unless predicate anc:inoverworld run data modify block ~ 255 ~ Items append from storage anc:dist Item
execute unless predicate anc:inoverworld run item modify block ~ 255 ~ container.0 anc:one
data modify storage anc:temp distItems set from block ~ ~ ~ Items
execute if predicate anc:inoverworld run loot insert ~ ~ ~ mine ~ 319 ~ tnt{drop_content:1b}
execute unless predicate anc:inoverworld run loot insert ~ ~ ~ mine ~ 255 ~ tnt{drop_content:1b}
execute store result score #dist2 ancValue run data modify storage anc:temp distItems set from block ~ ~ ~ Items
execute if score #dist2 ancValue matches 1.. run scoreboard players remove #dc ancValue 1
execute if score #dist2 ancValue matches 1.. if score #dc ancValue matches 1.. run function anc:machines/dist/dist_one
