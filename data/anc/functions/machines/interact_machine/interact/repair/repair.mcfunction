scoreboard players set #succeed ancValue 0
execute if predicate anc:machines/interact_machine/iron_ingot as @e[type=iron_golem,limit=1,distance=..10,sort=random] run function anc:machines/interact_machine/interact/repair/iron_golem
execute if score #succeed ancValue matches 1 run function anc:machines/interact_machine/clear/iron_ingot

scoreboard players set #succeed ancValue 0
execute if predicate anc:machines/interact_machine/heavy_weighted_pressure_plate as @e[type=falling_block,predicate=anc:anvil/notfull,limit=1,distance=..10,sort=nearest,tag=!repairTrue] run function anc:machines/interact_machine/interact/repair/anvil
execute if score #succeed ancValue matches 1 run function anc:machines/interact_machine/clear/heavy_weighted_pressure_plate
