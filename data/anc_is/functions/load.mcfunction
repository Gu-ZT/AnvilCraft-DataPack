scoreboard objectives add aiValue dummy
scoreboard objectives add aiFart custom:sneak_time
scoreboard objectives add aiViscousBond dummy

function anc_is:command/load

setworldspawn 0 64 0
fill -7 0 -7 7 0 7 bedrock

scoreboard players set $ancSkylandMode ancSuccess 1
