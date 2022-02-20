execute positioned 0 64 0 as @a[distance=..20] at @s run function anc_is:command/teleport/home

execute as @a[scores={skyland=-2147483648..2147483647}] run function anc_is:command/skyland
execute as @a[scores={skyland.home=-2147483648..2147483647}] run function anc_is:command/teleport/home
execute as @a[scores={skyland.visit=-2147483648..2147483647}] run function anc_is:command/teleport/visit
