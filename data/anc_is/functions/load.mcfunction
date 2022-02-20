scoreboard objectives add aiValue dummy

function anc_is:command/load

setworldspawn 0 64 0
fill -7 64 -7 7 64 7 bedrock

scoreboard players set $ancSkylandMode ancSuccess 1
