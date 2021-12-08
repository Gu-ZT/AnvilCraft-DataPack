execute unless predicate anc:machines/interact_machine/gui run function anc:machines/interact_machine/gui
loot replace block ~ ~ ~ container.19 1 loot anc:machines/misc/warning
execute unless data block ~ ~ ~ Items[{Slot:25b}] run item replace block ~ ~ ~ container.25 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"item.anc.output_slot.name"}'},CustomModelData:11141000}
execute unless predicate anc:strong if data block ~ ~ ~ Items[{Slot:25b,tag:{ancClear:1b}}] run function anc:machines/interact_machine/check
execute unless data block ~ ~ ~ Items[{Slot:25b,tag:{ancClear:1b}}] run function anc:machines/dist/dist25
execute at @s run particle enchant ~ ~ ~ 1 1 1 0.5 7 normal
