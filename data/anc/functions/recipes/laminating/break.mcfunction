execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:packed_ice if block ~ ~-2 ~ minecraft:packed_ice run function anc:recipes/laminating/to/blue_ice
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:stone if block ~ ~-2 ~ minecraft:stone run function anc:recipes/laminating/to/deepslate
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:moss_block if block ~ ~-2 ~ minecraft:cobblestone run function anc:recipes/laminating/to/mossy_cobblestone
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:moss_block if block ~ ~-2 ~ minecraft:stone_bricks run function anc:recipes/laminating/to/mossy_stone_bricks
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:moss_block if block ~ ~-2 ~ minecraft:dirt run function anc:recipes/laminating/to/grass_block
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:mushroom_stem if block ~ ~-2 ~ minecraft:dirt run function anc:recipes/laminating/to/mycelium
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:nether_wart_block if block ~ ~-2 ~ minecraft:netherrack run function anc:recipes/laminating/to/crimson_nylium
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:warped_wart_block if block ~ ~-2 ~ minecraft:netherrack run function anc:recipes/laminating/to/warped_nylium
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:mangrove_roots if block ~ ~-2 ~ minecraft:mud run function anc:recipes/laminating/to/muddy_mangrove_roots
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:dirt if block ~ ~-2 ~ minecraft:soul_sand run function anc:recipes/laminating/to/substitution/1
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:sand if block ~ ~-2 ~ minecraft:soul_soil run function anc:recipes/laminating/to/substitution/2
execute unless score $laminating ancSuccess matches 1 store success score $laminating ancSuccess if block ~ ~-1 ~ minecraft:soul_soil if block ~ ~-2 ~ minecraft:sand run function anc:recipes/laminating/to/substitution/3
scoreboard players reset $laminating ancSuccess
kill @s
