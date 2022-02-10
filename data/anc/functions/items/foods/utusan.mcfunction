execute as @s store success score $utusan ancSuccess if predicate anc:food/utusan run function anc:handle/debuff_clear
execute as @s unless score $utusan ancSuccess matches 1 unless predicate anc:food/utusan run effect give @s poison 10
