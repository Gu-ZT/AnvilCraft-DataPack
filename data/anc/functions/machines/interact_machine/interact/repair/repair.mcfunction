function anc:entities/gethealth

execute store success score @s ancRepairSuccess if predicate anc:machines/interact_machine/iron_ingot as @e[type=iron_golem,limit=1,distance=..10,sort=random] if score @s ancHealth matches ..75 run function anc:machines/interact_machine/interact/repair/iron_golem
execute if score @s ancRepairSuccess matches 1 run function anc:machines/interact_machine/clear/iron_ingot
scoreboard players reset @s ancRepairSuccess

execute store success score @s ancRepairSuccess if predicate anc:machines/interact_machine/heavy_weighted_pressure_plate as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:chipped_anvil"}},limit=1,distance=..10,sort=nearest,tag=!repairTrue] if score @s ancHealth matches ..75 run function anc:machines/interact_machine/interact/repair/anvil
execute store success score @s ancRepairSuccess if predicate anc:machines/interact_machine/heavy_weighted_pressure_plate as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:damaged_anvil"}},limit=1,distance=..10,sort=nearest,tag=!repairTrue] if score @s ancHealth matches ..75 run function anc:machines/interact_machine/interact/repair/anvil
execute if score @s ancRepairSuccess matches 1 run function anc:machines/interact_machine/clear/heavy_weighted_pressure_plate
scoreboard players reset @s ancRepairSuccess
