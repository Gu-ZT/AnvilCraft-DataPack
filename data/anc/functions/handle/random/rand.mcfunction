# 输入:(state.lo16) (state.hi32)
# 临时变量:(carry)
# 参数:(multi.lo16=58989) (multi.lo32=-554899859) (multi.hi32=384748)
# 常量:(1s=65536)
# 种子:(seed.lo16) (seed.hi32)

# refresh the state and output a "random" number
# A = state.lo16 * multi.lo16
# B = state.lo16 * multi.hi32
# C = state.hi32 * multi.lo32
# state.lo16 = A
# state.hi32 = B + C
scoreboard players operation #carry ancValue = #state.lo16 ancValue
scoreboard players operation #state.lo16 ancValue *= #multi.lo16 ancValue
scoreboard players operation #carry ancValue *= #multi.hi32 ancValue
scoreboard players operation #state.hi32 ancValue *= #multi.lo32 ancValue
scoreboard players operation #state.hi32 ancValue += #carry ancValue

# state.lo16 += 11(0xB)
# if .. : state.hi32 += 1
scoreboard players add #state.lo16 ancValue 11
execute if score #seed.lo16 ancValue matches 0..10 run scoreboard players add #state.hi32 ancValue 1
# state.lo16 = (A + 11) % 1s
# state.hi32 = B + C + ((A + 11) / 1s % 1s) [if + 1]
scoreboard players operation #carry ancValue = #state.lo16 ancValue
scoreboard players operation #carry ancValue /= #1s ancValue
scoreboard players operation #carry ancValue %= #1s ancValue
scoreboard players operation #state.hi32 ancValue += #carry ancValue
scoreboard players operation #state.lo16 ancValue %= #1s ancValue

# output (for further modification or ready to use)
scoreboard players operation #output ancValue = #state.hi32 ancValue