execute as @s if predicate anc:food/utusan run function anc:handle/debuff_clear
execute as @s unless predicate anc:food/utusan run effect give @s poison 10
