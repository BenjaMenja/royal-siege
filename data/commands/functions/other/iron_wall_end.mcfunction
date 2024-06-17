clear @s iron_leggings[custom_data~{ironwalllegs:1b}]

loot replace entity @s armor.legs loot commands:main_armor/robot_leggings

tag @s remove iron_wall

scoreboard players set @s ironwall 0