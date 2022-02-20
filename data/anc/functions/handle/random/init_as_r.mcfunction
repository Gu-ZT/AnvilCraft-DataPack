# get seed and reset state

# get seed
execute store result score #seed.hi32 ancValue run data get entity @s UUID[1]
execute store result score #seed.lo16 ancValue run data get entity @s UUID[3]
scoreboard players operation #seed.lo16 ancValue %= #1s ancValue

# reset state
scoreboard players operation #state.hi32 ancValue = #seed.hi32 ancValue
scoreboard players operation #state.lo16 ancValue = #seed.lo16 ancValue
