# 是否启用磁铁
execute if score $ancMagnetUseful ancConfig matches 1 run data modify storage anc:command_book MagnetUseful set value '[{"text":"[T] ","color":"green","bold":true},{"text":"[F]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/magnet_useful/off"}}]'
execute unless score $ancMagnetUseful ancConfig matches 1 run data modify storage anc:command_book MagnetUseful set value '[{"text":"[T] ","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/magnet_useful/on"}},{"text":"[F]","color":"green","bold":true}]'

# 是否启用磁铁可以吸起掉落中的铁砧
execute if score $ancAttractingFalling ancConfig matches 1 run data modify storage anc:command_book AttractingFalling set value '[{"text":"[T] ","color":"green","bold":true},{"text":"[F]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/attracting_falling/off"}}]'
execute unless score $ancAttractingFalling ancConfig matches 1 run data modify storage anc:command_book AttractingFalling set value '[{"text":"[T] ","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/attracting_falling/on"}},{"text":"[F]","color":"green","bold":true}]'

# 是否启用菜鸟模式
execute if score $ancRookieMode ancConfig matches 1 run data modify storage anc:command_book RookieMode set value '[{"text":"[T] ","color":"green","bold":true},{"text":"[F]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/rookie_mode/off"}}]'
execute unless score $ancRookieMode ancConfig matches 1 run data modify storage anc:command_book RookieMode set value '[{"text":"[T] ","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/rookie_mode/on"}},{"text":"[F]","color":"green","bold":true}]'


# 在经验修补2中每个经验瓶可以修补的耐久值
data modify storage anc:command_book ExperienceRepair set value '[{"text":"[","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/experience_repair"}},{"score":{"name":"$ancExperienceRepair","objective":"ancConfig"},"color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/experience_repair"}},{"text":"]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/experience_repair"}}]'

# 处理效率（个物品/次）
data modify storage anc:command_book ProcessingCount set value '[{"text":"[","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/processing_count"}},{"score":{"name":"$ancProcessingCount","objective":"ancConfig"},"color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/processing_count"}},{"text":"]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/processing_count"}}]'

# 是否启用空岛模式
execute if score $ancSkylandMode ancConfig matches 1 run data modify storage anc:command_book SkylandMode set value '[{"text":"[T] ","color":"green","bold":true},{"text":"[F]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/skyland_mode/off"}}]'
execute unless score $ancSkylandMode ancConfig matches 1 run data modify storage anc:command_book SkylandMode set value '[{"text":"[T] ","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/skyland_mode/on"}},{"text":"[F]","color":"green","bold":true}]'

# 是否启用单独岛屿
execute if score $ancSingleLand ancConfig matches 1 run data modify storage anc:command_book SingleLand set value '[{"text":"[T] ","color":"green","bold":true},{"text":"[F]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/single_land/off"}}]'
execute unless score $ancSingleLand ancConfig matches 1 run data modify storage anc:command_book SingleLand set value '[{"text":"[T] ","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function anc:items/command_book/single_land/on"}},{"text":"[F]","color":"green","bold":true}]'

execute if data entity @s SelectedItem{tag:{id:'anc:command_book'}} run loot replace entity @s weapon.mainhand loot anc:command_book
execute if data entity @s Inventory[{Slot:-106b,tag:{id:'anc:command_book'}}] run loot replace entity @s weapon.offhand loot anc:command_book
