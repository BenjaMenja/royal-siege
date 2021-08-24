data modify storage commands:scrambled Item set from entity @s Inventory[{Slot:2b}]
data modify storage commands:scrambled Item.Slot set value 0b
data modify block -1248 53 1274 Items append from storage commands:scrambled Item
data remove storage commands:scrambled Item

data modify storage commands:scrambled Item set from entity @s Inventory[{Slot:3b}]
data modify storage commands:scrambled Item.Slot set value 1b
data modify block -1248 53 1274 Items append from storage commands:scrambled Item
data remove storage commands:scrambled Item

data modify storage commands:scrambled Item set from entity @s Inventory[{Slot:7b}]
data modify storage commands:scrambled Item.Slot set value 2b
data modify block -1248 53 1274 Items append from storage commands:scrambled Item
data remove storage commands:scrambled Item

data modify storage commands:scrambled Item set from entity @s Inventory[{Slot:8b}]
data modify storage commands:scrambled Item.Slot set value 3b
data modify block -1248 53 1274 Items append from storage commands:scrambled Item
data remove storage commands:scrambled Item

data modify storage commands:scrambled Item set from entity @s Inventory[{Slot:0b}]
data modify storage commands:scrambled Item.Slot set value 4b
data modify block -1248 53 1274 Items append from storage commands:scrambled Item
data remove storage commands:scrambled Item

data modify storage commands:scrambled Item set from entity @s Inventory[{Slot:6b}]
data modify storage commands:scrambled Item.Slot set value 5b
data modify block -1248 53 1274 Items append from storage commands:scrambled Item
data remove storage commands:scrambled Item

data modify storage commands:scrambled Item set from entity @s Inventory[{Slot:5b}]
data modify storage commands:scrambled Item.Slot set value 6b
data modify block -1248 53 1274 Items append from storage commands:scrambled Item
data remove storage commands:scrambled Item

data modify storage commands:scrambled Item set from entity @s Inventory[{Slot:4b}]
data modify storage commands:scrambled Item.Slot set value 7b
data modify block -1248 53 1274 Items append from storage commands:scrambled Item
data remove storage commands:scrambled Item

data modify storage commands:scrambled Item set from entity @s Inventory[{Slot:1b}]
data modify storage commands:scrambled Item.Slot set value 8b
data modify block -1248 53 1274 Items append from storage commands:scrambled Item
data remove storage commands:scrambled Item

item replace entity @s hotbar.0 from block -1248 53 1274 container.0

item replace entity @s hotbar.1 from block -1248 53 1274 container.1

item replace entity @s hotbar.2 from block -1248 53 1274 container.2

item replace entity @s hotbar.3 from block -1248 53 1274 container.3

item replace entity @s hotbar.4 from block -1248 53 1274 container.4

item replace entity @s hotbar.5 from block -1248 53 1274 container.5

item replace entity @s hotbar.6 from block -1248 53 1274 container.6

item replace entity @s hotbar.7 from block -1248 53 1274 container.7

item replace entity @s hotbar.8 from block -1248 53 1274 container.8

tellraw @s {"text":"You've been scrambled!","color":"yellow"}

data remove block -1248 53 1274 Items