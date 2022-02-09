execute if block ~ ~-4 ~ minecraft:anvil store success score #got ancValue run summon falling_block ~ ~-1 ~ {NoGravity:1b,BlockState:{Name:"minecraft:anvil"},Time:-2147483648,FallHurtAmount:2f}
execute if block ~ ~-4 ~ minecraft:chipped_anvil store success score #got ancValue run summon falling_block ~ ~-1 ~ {NoGravity:1b,BlockState:{Name:"minecraft:chipped_anvil"},Time:-2147483648,FallHurtAmount:2f}
execute if block ~ ~-4 ~ minecraft:damaged_anvil store success score #got ancValue run summon falling_block ~ ~-1 ~ {NoGravity:1b,BlockState:{Name:"minecraft:damaged_anvil"},Time:-2147483648,FallHurtAmount:2f}
execute if score #got ancValue matches 1 run setblock ~ ~-4 ~ air replace
