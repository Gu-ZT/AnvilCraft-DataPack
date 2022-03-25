data remove storage anc:temp ItemsTemp[0].Slot
loot replace block ~ 255 ~ container.0 loot anc:gui/empty
data modify block ~ 255 ~ Items[0] set from storage anc:temp ItemsTemp[0]
execute unless data block ~ 255 ~ Items[0].tag.ancCustomEnchantments[{id:"anc:soul_binding"}] run loot spawn ~ ~ ~ mine ~ 255 ~ tnt{drop_content:1b}
execute if data block ~ 255 ~ Items[0].tag.ancCustomEnchantments[{id:"anc:soul_binding"}] run item replace block ~ 255 ~ container.0 with air
data remove storage anc:temp ItemsTemp[0]
execute store result score $soulBinding ancValue run data get storage anc:temp ItemsTemp
execute if score $soulBinding ancValue matches 1.. run function anc:custom_enchantments/soul_binding/drop/255
