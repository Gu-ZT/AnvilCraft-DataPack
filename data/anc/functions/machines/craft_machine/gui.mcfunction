setblock ~ 319 ~ shulker_box
data modify block ~ 319 ~ Items set from block ~ ~ ~ Items
data remove block ~ 319 ~ Items[{tag:{ancClear:1b}}]
data remove block ~ 319 ~ Items[{Slot:1b}]
data remove block ~ 319 ~ Items[{Slot:2b}]
data remove block ~ 319 ~ Items[{Slot:3b}]
data remove block ~ 319 ~ Items[{Slot:10b}]
data remove block ~ 319 ~ Items[{Slot:11b}]
data remove block ~ 319 ~ Items[{Slot:12b}]
data remove block ~ 319 ~ Items[{Slot:19b}]
data remove block ~ 319 ~ Items[{Slot:20b}]
data remove block ~ 319 ~ Items[{Slot:21b}]
data remove block ~ 319 ~ Items[{Slot:25b}]
loot give @p mine ~ 319 ~ tnt{drop_content:1b}
setblock ~ 319 ~ air
execute unless data block ~ ~ ~ Items[{Slot:6b}] run function anc:machines/misc/output
execute unless data block ~ ~ ~ Items[{Slot:7b}] run function anc:machines/misc/retain
item replace block ~ ~ ~ container.0 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141012}
item replace block ~ ~ ~ container.4 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.5 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
loot replace block ~ ~ ~ container.6 1 loot anc:machines/misc/switch
loot replace block ~ ~ ~ container.7 1 loot anc:machines/misc/switch_retain
item replace block ~ ~ ~ container.8 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.9 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.13 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.14 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.15 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.16 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.17 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.18 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.22 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.23 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.24 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
item replace block ~ ~ ~ container.26 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.block.craft_machine.name"}'},CustomModelData:11141000}
