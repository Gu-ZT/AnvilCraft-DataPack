scoreboard objectives add ancValue dummy
scoreboard objectives add ancAnvil dummy
scoreboard objectives add ancAnvilType dummy
scoreboard objectives add ancDistance dummy
scoreboard objectives add ancMacOut dummy
scoreboard objectives add ancRetain dummy
scoreboard objectives add ancInteract dummy
scoreboard objectives add ancSuccess dummy
scoreboard objectives add ancHealth dummy
scoreboard objectives add ancLastRestock dummy

scoreboard objectives add ancCarrotStickUse minecraft.used:carrot_on_a_stick

scoreboard objectives add ancRandom dummy
scoreboard players set $max ancRandom 0
scoreboard players set $min ancRandom 0
scoreboard players set $output ancRandom 0

scoreboard objectives add ancRepairSuccess dummy
scoreboard objectives add ancAbsorbSuccess dummy
scoreboard objectives add ancPlacementSuccess dummy
scoreboard objectives add ancProtectSuccess dummy
scoreboard objectives add ancRestockSuccess dummy

scoreboard objectives add ancDispelSuccess dummy
scoreboard objectives add ancDispenserSuccess dummy
scoreboard objectives add ancExpValue dummy

# scoreboard objectives add testX dummy
# scoreboard objectives add testY dummy
# scoreboard objectives add testZ dummy

scoreboard players set $25 ancHealth 25
scoreboard players set $7 ancExpValue 7

gamerule commandBlockOutput false
