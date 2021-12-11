setblock ~ 319 ~ shulker_box
execute if predicate anc:inoverworld run data modify block ~ 319 ~ Items set from block ~ ~ ~ Items
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{tag:{ancClear:1b}}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:1b}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:2b}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:3b}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:10b}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:11b}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:12b}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:19b}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:20b}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:21b}]
execute if predicate anc:inoverworld run data remove block ~ 319 ~ Items[{Slot:25b}]
execute if predicate anc:inoverworld run loot give @p mine ~ 319 ~ tnt{drop_content:1b}
execute if predicate anc:inoverworld run setblock ~ 319 ~ air
execute unless predicate anc:inoverworld run setblock ~ 255 ~ shulker_box
execute unless predicate anc:inoverworld run data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{tag:{ancClear:1b}}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:1b}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:2b}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:3b}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:10b}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:11b}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:12b}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:19b}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:20b}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:21b}]
execute unless predicate anc:inoverworld run data remove block ~ 255 ~ Items[{Slot:25b}]
execute unless predicate anc:inoverworld run loot give @p mine ~ 255 ~ tnt{drop_content:1b}
execute unless predicate anc:inoverworld run setblock ~ 255 ~ air
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
