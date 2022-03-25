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
scoreboard objectives add ancInfernalLevel dummy
scoreboard objectives add ancLevel level
scoreboard objectives add ancUid dummy
scoreboard objectives add ancRandom dummy
scoreboard objectives add ancExpValue dummy
scoreboard objectives add ancConfig dummy
scoreboard objectives add ancItemCount dummy
scoreboard objectives add ancTempStrong dummy
scoreboard objectives add ancPlayerDeath deathCount
scoreboard objectives add ancBrokenSpawner minecraft.mined:spawner
scoreboard objectives add ancCarrotStickUse minecraft.used:carrot_on_a_stick

scoreboard objectives setdisplay list ancUid

scoreboard players set $max ancRandom 0
scoreboard players set $min ancRandom 0
scoreboard players set $output ancRandom 0

gamerule commandBlockOutput false
gamerule keepInventory true

execute unless score loadConfig ancConfig matches 1 run function anc:config
function anc:handle/constant

function anc:items/seal_slate/tick3
advancement revoke @a only anc:welcome/join
