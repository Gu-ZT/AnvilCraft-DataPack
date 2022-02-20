
# 黑暗
function anc:handle/random
execute if score $output ancRandom matches ..20 run tag @s add inf_dark
execute if score $output ancRandom matches ..20 run scoreboard players add @s ancInfernalLevel 10
execute if score $output ancRandom matches ..20 run data modify storage temp list append value '{"translate":"anc.infernal.dark","color":"red"}'
# 生锈
function anc:handle/random
execute if score $output ancRandom matches ..20 run tag @s add inf_rust
execute if score $output ancRandom matches ..20 run scoreboard players add @s ancInfernalLevel 15
execute if score $output ancRandom matches ..20 run data modify storage temp list append value '{"translate":"anc.infernal.rust","color":"red"}'
# 粘性
function anc:handle/random
execute if score $output ancRandom matches ..20 run tag @s add inf_sticky
execute if score $output ancRandom matches ..20 run scoreboard players add @s ancInfernalLevel 20
execute if score $output ancRandom matches ..20 run data modify storage temp list append value '{"translate":"anc.infernal.sticky","color":"red"}'
# 织网
function anc:handle/random
execute if score $output ancRandom matches ..20 run tag @s add inf_weaving_net
execute if score $output ancRandom matches ..20 run scoreboard players add @s ancInfernalLevel 12
execute if score $output ancRandom matches ..20 run data modify storage temp list append value '{"translate":"anc.infernal.weaving_net","color":"red"}'