execute if data entity @s Inventory[{Slot:103b}].tag.Damage run item modify entity @s armor.head anc:rust
execute if data entity @s Inventory[{Slot:102b}].tag.Damage run item modify entity @s armor.chest anc:rust
execute if data entity @s Inventory[{Slot:101b}].tag.Damage run item modify entity @s armor.legs anc:rust
execute if data entity @s Inventory[{Slot:100b}].tag.Damage run item modify entity @s armor.feet anc:rust
execute if data entity @s SelectedItem.tag.Damage run item modify entity @s weapon.mainhand anc:rust
execute if data entity @s Inventory[{Slot:-106b}].tag.Damage run item modify entity @s weapon.offhand anc:rust
advancement revoke @s only anc:infernal_mobs/dark
