execute if block ~ ~ ~ dispenser{Items:[{id:"minecraft:tropical_fish_bucket",Slot:1b}]} run item replace block ~ ~ ~ container.0 with bucket
execute unless block ~ ~ ~ dispenser{Items:[{id:"minecraft:tropical_fish_bucket",Slot:1b}]} run item modify block ~ ~ ~ container.0 anc:reduce1
