# 铁砧编号并召唤专属药水云
execute if entity @s[tag=!anc_marked] at @s run function anc:handle/mark

# 对于上方没有激活的磁铁
execute at @s positioned ~ ~0.7 ~ align xyz unless entity @e[type=glow_item_frame,tag=anc_magnet_block,dx=1,dy=1,dz=1,predicate=anc:strong,limit=1] run function anc:handle/nonmagnetic_anvil
