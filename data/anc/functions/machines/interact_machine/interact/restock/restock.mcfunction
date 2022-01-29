execute if predicate anc:machines/interact_machine/gold_nugget store success score @s ancAbsorbSuccess if entity @e[type=villager,limit=1,distance=..10,scores={ancLastRestock=10..}] run function anc:machines/interact_machine/interact/restock/villager
execute if predicate anc:machines/interact_machine/gold_nugget if score @s ancAbsorbSuccess matches 1 run function anc:machines/interact_machine/clear/gold_nugget
scoreboard players reset @s ancAbsorbSuccess
