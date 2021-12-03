data remove block ~ 319 ~ Items
data modify block ~ 319 ~ Items append from storage anc:dist Item
item modify block ~ 319 ~ container.0 anc:one
data modify storage anc:temp distItems set from block ~ ~ ~ Items
loot insert ~ ~ ~ mine ~ 319 ~ tnt{drop_content:1b}
execute store result score #dist2 ancValue run data modify storage anc:temp distItems set from block ~ ~ ~ Items
execute if score #dist2 ancValue matches 1.. run scoreboard players remove #dc ancValue 1
execute if score #dist2 ancValue matches 1.. if score #dc ancValue matches 1.. run function anc:machines/dist/dist_one
