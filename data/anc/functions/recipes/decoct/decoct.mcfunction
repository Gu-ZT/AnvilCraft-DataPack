execute if score $ancTemp ancItemCount matches 1.. if entity @s[nbt={Item:{tag:{id:"anc:dough"}}}] run function anc:recipes/decoct/loot/bread
execute if score $ancTemp ancItemCount matches 1.. if entity @s[nbt={Item:{tag:{id:"anc:shengjian_raw"}}}] run function anc:recipes/decoct/loot/shengjian
execute if score $ancTemp ancItemCount matches 1.. if entity @s[nbt={Item:{tag:{id:"anc:meatballs_raw"}}}] run function anc:recipes/decoct/loot/meatballs
execute if score $ancTemp ancItemCount matches 1.. if entity @s[nbt={Item:{tag:{id:"anc:utusan_raw"}}}] run function anc:recipes/decoct/loot/utusan
advancement grant @a[sort=nearest,advancements={anc:anc/cook=false},limit=1] only anc:anc/cook
