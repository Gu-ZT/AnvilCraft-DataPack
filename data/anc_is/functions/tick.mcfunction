execute positioned 0 64 0 as @a[distance=..20] at @s run function anc_is:command/teleport/home

function #anc_is:machines

execute as @a[scores={skyland=1..}] run function anc_is:command/skyland
execute as @a[scores={skyland.home=1..}] run function anc_is:command/teleport/home
execute as @a[scores={skyland.visit=1..}] run function anc_is:command/teleport/visit
