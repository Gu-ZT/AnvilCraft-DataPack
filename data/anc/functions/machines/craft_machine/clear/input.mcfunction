execute if data block ~ ~ ~ Items[{id:"minecraft:water_bucket"}] run function anc:machines/craft_machine/clear/water_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:lava_bucket"}] run function anc:machines/craft_machine/clear/lava_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:milk_bucket"}] run function anc:machines/craft_machine/clear/milk_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:cod_bucket"}] run function anc:machines/craft_machine/clear/cod_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:salmon_bucket"}] run function anc:machines/craft_machine/clear/salmon_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:tropical_fish_bucket"}] run function anc:machines/craft_machine/clear/tropical_fish_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:pufferfish_bucket"}] run function anc:machines/craft_machine/clear/pufferfish_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:axolotl_bucket"}] run function anc:machines/craft_machine/clear/axolotl_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:potion"}] run function anc:machines/craft_machine/clear/potion
execute if data block ~ ~ ~ Items[{id:"minecraft:honey_bottle"}] run function anc:machines/craft_machine/clear/honey_bottle
execute if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items.[{Slot:1b,id:"minecraft:wheat_seeds"}] run item modify block ~ ~ ~ container.1 anc:reduce1
execute if data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items.[{Slot:2b,id:"minecraft:wheat_seeds"}] run item modify block ~ ~ ~ container.2 anc:reduce1
execute if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items.[{Slot:3b,id:"minecraft:wheat_seeds"}] run item modify block ~ ~ ~ container.3 anc:reduce1
execute if data block ~ ~ ~ Items[{Slot:10b}] unless data block ~ ~ ~ Items.[{Slot:10b,id:"minecraft:wheat_seeds"}] run item modify block ~ ~ ~ container.10 anc:reduce1
execute if data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items.[{Slot:11b,id:"minecraft:wheat_seeds"}] run item modify block ~ ~ ~ container.11 anc:reduce1
execute if data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items.[{Slot:12b,id:"minecraft:wheat_seeds"}] run item modify block ~ ~ ~ container.12 anc:reduce1
execute if data block ~ ~ ~ Items[{Slot:19b}] unless data block ~ ~ ~ Items.[{Slot:19b,id:"minecraft:wheat_seeds"}] run item modify block ~ ~ ~ container.19 anc:reduce1
execute if data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items.[{Slot:20b,id:"minecraft:wheat_seeds"}] run item modify block ~ ~ ~ container.20 anc:reduce1
execute if data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items.[{Slot:21b,id:"minecraft:wheat_seeds"}] run item modify block ~ ~ ~ container.21 anc:reduce1
