# 若gui元件发生变动
execute unless predicate anc:machines/interact_machine/gui run function anc:machines/interact_machine/gui
# 根据情况设置是否报警(？
loot replace block ~ ~ ~ container.19 1 loot anc:machines/misc/warning
# 若输出为空则填充输出格
execute unless data block ~ ~ ~ Items[{Slot:25b}] run item replace block ~ ~ ~ container.25 with firework_star{ancClear:1b,display:{Name:'{"italic":false,"translate":"anc.item.output_slot.name"}'},CustomModelData:11141000}
# 若没有充能且输出为空，check
execute unless predicate anc:strong if data block ~ ~ ~ Items[{Slot:25b,tag:{ancClear:1b}}] run function anc:machines/interact_machine/check
# 若输出非空，，(看不懂)
execute unless data block ~ ~ ~ Items[{Slot:25b,tag:{ancClear:1b}}] run function anc:machines/dist/dist25
# 炫酷的粒子效果(雾)
execute at @s run particle enchant ~ ~ ~ 1 1 1 0.5 7 normal
