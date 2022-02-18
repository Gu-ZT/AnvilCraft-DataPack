data modify storage anc:dist Item set from block ~ ~ ~ Items[{Slot:25b}]
function anc:machines/dist/machine
item modify block ~ ~ ~ container.25 anc:machines/dist/dist_count
execute if score #dc ancValue matches 0 run item replace block ~ ~ ~ container.25 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.item.output_slot.name"}'},CustomModelData:11141000}
