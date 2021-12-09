setblock ~ 319 ~ shulker_box
data modify block ~ 319 ~ Items set from block ~ ~ ~ Items
data remove block ~ 319 ~ Items[{tag:{ancClear:1b}}]
data remove block ~ 319 ~ Items[{Slot:1b}]
data remove block ~ 319 ~ Items[{Slot:3b}]
data remove block ~ 319 ~ Items[{Slot:4b}]
data remove block ~ 319 ~ Items[{Slot:5b}]
data remove block ~ 319 ~ Items[{Slot:12b}]
data remove block ~ 319 ~ Items[{Slot:13b}]
data remove block ~ 319 ~ Items[{Slot:14b}]
data remove block ~ 319 ~ Items[{Slot:21b}]
data remove block ~ 319 ~ Items[{Slot:22b}]
data remove block ~ 319 ~ Items[{Slot:23b}]
data remove block ~ 319 ~ Items[{Slot:25b}]
loot give @p mine ~ 319 ~ tnt{drop_content:1b}
setblock ~ 319 ~ air
execute unless data block ~ ~ ~ Items[{Slot:7b}] run function anc:machines/misc/output
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
