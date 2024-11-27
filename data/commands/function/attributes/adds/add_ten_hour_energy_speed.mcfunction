attribute @s minecraft:movement_speed modifier add 0-1-55-120-0 0.55 add_multiplied_base

execute if entity @s[team=Red] run attribute @p[team=Red,tag=ivAttached] minecraft:movement_speed modifier add 0-1-55-120-0 0.55 add_multiplied_base

execute if entity @s[team=Blue] run attribute @p[team=Blue,tag=ivAttached] minecraft:movement_speed modifier add 0-1-55-120-0 0.55 add_multiplied_base

execute if entity @s[team=Red] if entity @a[team=Red,tag=ivAttached] run tellraw @a [{"selector": "@s"},{"text":" and "},{"selector": "@a[team=Red,tag=ivAttached]"},{"text": " are full of energy!"}]

execute if entity @s[team=Blue] if entity @a[team=Blue,tag=ivAttached] run tellraw @a [{"selector": "@s"},{"text":" and "},{"selector": "@a[team=Blue,tag=ivAttached]"},{"text": " are full of energy!"}]

execute if entity @s[team=Red] unless entity @a[team=Red,tag=ivAttached] run tellraw @a [{"selector": "@s"},{"text": " is full of energy!"}]

execute if entity @s[team=Blue] unless entity @a[team=Blue,tag=ivAttached] run tellraw @a [{"selector": "@s"},{"text": " is full of energy!"}]

scoreboard players set @s RSAttr.TenHourEnergySpeed 0

execute if entity @s[team=Red] run scoreboard players set @p[team=Red,tag=ivAttached] RSAttr.TenHourEnergySpeed 0

execute if entity @s[team=Blue] run scoreboard players set @p[team=Blue,tag=ivAttached] RSAttr.TenHourEnergySpeed 0

clear @s carrot[custom_data~{tenhourenergy:1b}]