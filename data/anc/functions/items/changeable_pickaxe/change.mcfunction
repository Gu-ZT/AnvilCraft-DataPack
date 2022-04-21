execute store result score #inoverworld ancValue if predicate anc:inoverworld

data modify storage anc:temp ChangeItem set value [{},{}]
data modify storage anc:temp ChangeItem[0] set from entity @s SelectedItem
data modify storage anc:temp ChangeItem[1] set from entity @s Inventory[{Slot:-106b}]
data modify storage anc:temp ChangeItem[0].Slot set value 0b
data modify storage anc:temp ChangeItem[1].Slot set value 1b
execute unless score #changeable_pickaxe ancValue matches 0 run scoreboard players set #changeable_pickaxe ancValue 0
execute if data storage anc:temp ChangeItem[{Slot:1b,tag:{id:"anc:changeable_pickaxe_fortune"}}] store success score #changeable_pickaxe ancValue run data modify storage anc:temp ChangeItem[1].tag merge value {CustomModelData:11140068,dict:["changeable_pickaxe"],id:'anc:changeable_pickaxe_silk_touch',display:{Name:'{"italic":false,"translate":"anc.item.changeable_pickaxe_silk_touch.name"}'},Unbreakable:1b,HideFlags:1,Enchantments:[{id:"minecraft:silk_touch",lvl:2s},{id:"minecraft:efficiency",lvl:6s}]}
execute unless score #changeable_pickaxe ancValue matches 1 if data storage anc:temp ChangeItem[{Slot:1b,tag:{id:"anc:changeable_pickaxe_silk_touch"}}] run data modify storage anc:temp ChangeItem[1].tag merge value {CustomModelData:11140069,dict:["changeable_pickaxe"],id:'anc:changeable_pickaxe_fortune',display:{Name:'{"italic":false,"translate":"anc.item.changeable_pickaxe_fortune.name"}'},Unbreakable:1b,HideFlags:1,Enchantments:[{id:"minecraft:fortune",lvl:4s},{id:"minecraft:efficiency",lvl:6s}]}
data remove storage anc:temp ChangeItem[0].Slot
data remove storage anc:temp ChangeItem[1].Slot

execute if score #inoverworld ancValue matches 1 run setblock ~ 319 ~ shulker_box
execute if score #inoverworld ancValue matches 1 run loot replace block ~ 319 ~ container.0 loot anc:gui/empty
execute if score #inoverworld ancValue matches 1 run data modify block ~ 319 ~ Items[0] set from storage anc:temp ChangeItem[1]
execute if score #inoverworld ancValue matches 1 run item replace entity @s weapon.mainhand from block ~ 319 ~ container.0
execute if score #inoverworld ancValue matches 1 run data modify block ~ 319 ~ Items[0] set from storage anc:temp ChangeItem[0]
execute if score #inoverworld ancValue matches 1 run item replace entity @s weapon.offhand from block ~ 319 ~ container.0
execute if score #inoverworld ancValue matches 1 run setblock ~ 319 ~ air
execute if score #inoverworld ancValue matches 0 run setblock ~ 255 ~ shulker_box
execute if score #inoverworld ancValue matches 0 run loot replace block ~ 255 ~ container.0 loot anc:gui/empty
execute if score #inoverworld ancValue matches 0 run data modify block ~ 255 ~ Items[0] set from storage anc:temp ChangeItem[1]
execute if score #inoverworld ancValue matches 0 run item replace entity @s weapon.mainhand from block ~ 255 ~ container.0
execute if score #inoverworld ancValue matches 0 run data modify block ~ 255 ~ Items[0] set from storage anc:temp ChangeItem[0]
execute if score #inoverworld ancValue matches 0 run item replace entity @s weapon.offhand from block ~ 255 ~ container.0
execute if score #inoverworld ancValue matches 0 run setblock ~ 255 ~ air
