execute if block ~ ~-3 ~ minecraft:anvil store success score #got ancValue run summon falling_block ~ ~-1 ~ {NoGravity:1b,BlockState:{Name:"minecraft:anvil"},Time:-2147483648,FallHurtAmount:2f}
execute if block ~ ~-3 ~ minecraft:chipped_anvil store success score #got ancValue run summon falling_block ~ ~-1 ~ {NoGravity:1b,BlockState:{Name:"minecraft:chipped_anvil"},Time:-2147483648,FallHurtAmount:2f}
execute if block ~ ~-3 ~ minecraft:damaged_anvil store success score #got ancValue run summon falling_block ~ ~-1 ~ {NoGravity:1b,BlockState:{Name:"minecraft:damaged_anvil"},Time:-2147483648,FallHurtAmount:2f}
execute if score #got ancValue matches 1 run setblock ~ ~-3 ~ air replace
playsound minecraft:block.anvil.land block @a ~ ~ ~
