# 复制木桶的物品，除去合成栏位和gui物品，返还给最近的玩家
execute store result score #inoverworld ancValue if predicate anc:inoverworld

execute if score #inoverworld ancValue matches 1 run setblock ~ 319 ~ shulker_box
execute if score #inoverworld ancValue matches 1 run data modify block ~ 319 ~ Items set from block ~ ~ ~ Items
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{tag:{ancClear:1b}}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:1b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:3b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:4b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:5b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:12b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:13b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:14b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:21b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:22b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:23b}]
execute if score #inoverworld ancValue matches 1 run data remove block ~ 319 ~ Items[{Slot:25b}]
execute if score #inoverworld ancValue matches 1 run loot give @p mine ~ 319 ~ tnt{drop_content:1b}
execute if score #inoverworld ancValue matches 1 run setblock ~ 319 ~ air
execute if score #inoverworld ancValue matches 0 run setblock ~ 255 ~ shulker_box
execute if score #inoverworld ancValue matches 0 run data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{tag:{ancClear:1b}}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:1b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:3b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:4b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:5b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:12b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:13b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:14b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:21b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:22b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:23b}]
execute if score #inoverworld ancValue matches 0 run data remove block ~ 255 ~ Items[{Slot:25b}]
execute if score #inoverworld ancValue matches 0 run loot give @p mine ~ 255 ~ tnt{drop_content:1b}
execute if score #inoverworld ancValue matches 0 run setblock ~ 255 ~ air


# 若7的栏位发生变动，运行函数
execute unless data block ~ ~ ~ Items[{Slot:7b}] run function anc:machines/misc/output


# 重新放置gui元件
item replace block ~ ~ ~ container.0 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141013}
item replace block ~ ~ ~ container.2 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.6 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
loot replace block ~ ~ ~ container.7 1 loot anc:machines/misc/switch
item replace block ~ ~ ~ container.8 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.9 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.10 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.11 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.15 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.16 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.17 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.18 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
loot replace block ~ ~ ~ container.19 1 loot anc:machines/misc/warning
item replace block ~ ~ ~ container.20 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.24 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.26 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.interact_machine.name"}'},CustomModelData:11141000}
