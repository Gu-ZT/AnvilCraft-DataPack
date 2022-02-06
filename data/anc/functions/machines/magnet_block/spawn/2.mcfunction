execute as @s if score @s ancAnvilType matches 0 if block ~ ~-2 ~ minecraft:anvil store success score @s ancAnvilType run summon falling_block ~ ~-1 ~ {NoGravity:1b,BlockState:{Name:"minecraft:anvil"},Time:1,FallHurtAmount:2f}
execute as @s if score @s ancAnvilType matches 0 if block ~ ~-2 ~ minecraft:chipped_anvil store success score @s ancAnvilType run summon falling_block ~ ~-1 ~ {NoGravity:1b,BlockState:{Name:"minecraft:chipped_anvil"},Time:1,FallHurtAmount:2f}
execute as @s if score @s ancAnvilType matches 0 if block ~ ~-2 ~ minecraft:damaged_anvil store success score @s ancAnvilType run summon falling_block ~ ~-1 ~ {NoGravity:1b,BlockState:{Name:"minecraft:damaged_anvil"},Time:1,FallHurtAmount:2f}
execute as @s run fill ~ ~-2 ~ ~ ~-2 ~ air replace #anvil
