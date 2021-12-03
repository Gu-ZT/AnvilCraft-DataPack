summon item ~ ~-2 ~ {Item:{id:"minecraft:stone",tag:{anc_s:1b},Count:1b}}
execute as @e[type=item,limit=1,nbt={Item:{id:"minecraft:stone",tag:{anc_s:1b}}}] at @s run function anc:more/accurate_dropper/drop/to/6
item modify block ~ ~-1 ~ container.5 anc:reduce1
