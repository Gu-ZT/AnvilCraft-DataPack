# 若gui元件发生变动
execute unless predicate anc:machines/craft_machine/gui run function anc:machines/craft_machine/gui
# 若输出为空则填充输出格
execute unless data block ~ ~ ~ Items[{Slot:25b}] run item replace block ~ ~ ~ container.25 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"item.anc.output_slot.name"}'},CustomModelData:11141000}
# 若没有充能且输出为空，check
execute unless predicate anc:strong if data block ~ ~ ~ Items[{Slot:25b,tag:{ancClear:1b}}] run function anc:machines/craft_machine/check
# 若输出非空，，(看不懂)
execute unless data block ~ ~ ~ Items[{Slot:25b,tag:{ancClear:1b}}] run function anc:machines/dist/dist25
