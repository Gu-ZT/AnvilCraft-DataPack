execute as @s store success score $utusan ancValue if predicate anc:food/utusan
execute as @s store success score $utusan ancSuccess if score $utusan ancValue matches 1 run function anc:handle/debuff_clear
execute as @s unless score $utusan ancSuccess matches 1 unless score $utusan ancValue matches 1 run effect give @s poison 10
advancement revoke @s only anc:foods/utusan
