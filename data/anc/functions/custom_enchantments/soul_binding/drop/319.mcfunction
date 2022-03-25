data remove storage anc:temp ItemsTemp[0].Slot
loot replace block ~ 319 ~ container.0 loot anc:gui/empty
data modify block ~ 319 ~ Items[0] set from storage anc:temp ItemsTemp[0]
execute unless data block ~ 319 ~ Items[0].tag.ancCustomEnchantments[{id:"anc:soul_binding"}] run loot spawn ~ ~ ~ mine ~ 319 ~ tnt{drop_content:1b}
execute if data block ~ 319 ~ Items[0].tag.ancCustomEnchantments[{id:"anc:soul_binding"}] run item replace block ~ 319 ~ container.0 with air
data remove storage anc:temp ItemsTemp[0]
execute store result score $soulBinding ancValue run data get storage anc:temp ItemsTemp
execute if score $soulBinding ancValue matches 1.. run function anc:custom_enchantments/soul_binding/drop/319
