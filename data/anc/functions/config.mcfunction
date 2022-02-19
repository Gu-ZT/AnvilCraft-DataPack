# 是否启用磁铁
scoreboard players set $ancMagnetUseful ancConfig 1
# 处理效率（个物品/次）
scoreboard players set $ancProcessingCount ancConfig 4
# 是否启用磁铁可以吸起掉落中的铁砧
scoreboard players set $ancAttractingFalling ancConfig 1
# 在经验修补2中每个经验瓶可以修补的耐久值
scoreboard players set $ancExperienceRepair ancConfig 14
# 是否启用菜鸟模式
scoreboard players set $ancRookieMode ancConfig 1

#s3_io循环读取指针上限
scoreboard players set $ancMaxLoop ancConfig 65535

function anc:items/command_book/reload
