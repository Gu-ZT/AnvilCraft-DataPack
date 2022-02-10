scoreboard players set #Count ancValue 64
function anc:handle/funcloot/spawn
scoreboard players remove #64x ancValue 1
execute if score #64x ancValue matches 1.. run function anc:handle/funcloot/read/loop
