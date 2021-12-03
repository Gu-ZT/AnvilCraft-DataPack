setblock ~ ~-1 ~ air destroy
execute if block ~ ~ ~ damaged_anvil run setblock ~ ~ ~ air
execute if block ~ ~ ~ chipped_anvil run setblock ~ ~ ~ damaged_anvil
execute if block ~ ~ ~ anvil run setblock ~ ~ ~ chipped_anvil
