execute if score $ancTemp ancItemCount matches 1.. if entity @s[nbt={Item:{tag:{id:"anc:dumpling_raw"}}}] run function anc:recipes/boil/loot/dumpling
execute if score $ancTemp ancItemCount matches 1.. if entity @s[nbt={Item:{tag:{id:"anc:beef_mushroom_stew_raw"}}}] run function anc:recipes/boil/loot/beef_mushroom_stew
execute if score $ancTemp ancItemCount matches 1.. if entity @s[nbt={Item:{tag:{id:"anc:sweet_dumpling_raw"}}}] run function anc:recipes/boil/loot/sweet_dumpling_raw
advancement grant @a[sort=nearest,advancements={anc:anc/cook=false},limit=1] only anc:anc/cook
