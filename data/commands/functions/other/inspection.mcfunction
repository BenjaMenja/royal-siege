execute as @a[team=Red,nbt={Inventory:[{tag:{ultimateitem:1b}}]}] run scoreboard players add #redUlts multiItems 1

execute as @a[team=Blue,nbt={Inventory:[{tag:{ultimateitem:1b}}]}] run scoreboard players add #blueUlts multiItems 1

execute if score #blueUlts multiItems matches 1.. run tellraw @s[team=Red] [{"text":"The following enemies have their ultimates ready: ","color":"aqua"},{"selector":"@a[team=Blue,nbt={Inventory:[{tag:{ultimateitem:1b}}]}]"}]

execute if score #redUlts multiItems matches 1.. run tellraw @s[team=Red] [{"text":"The following teammates have their ultimates ready: ","color":"aqua"},{"selector":"@a[team=Red,nbt={Inventory:[{tag:{ultimateitem:1b}}]}]"}]

execute if score #redUlts multiItems matches 1.. run tellraw @s[team=Blue] [{"text":"The following enemies have their ultimates ready: ","color":"aqua"},{"selector":"@a[team=Red,nbt={Inventory:[{tag:{ultimateitem:1b}}]}]"}]

execute if score #blueUlts multiItems matches 1.. run tellraw @s[team=Blue] [{"text":"The following teammates have their ultimates ready: ","color":"aqua"},{"selector":"@a[team=Blue,nbt={Inventory:[{tag:{ultimateitem:1b}}]}]"}]

execute if score #blueUlts multiItems matches 0 run tellraw @s[team=Red] [{"text":"No enemies have their ults ready!","color":"aqua"}]

execute if score #redUlts multiItems matches 0 run tellraw @s[team=Red] [{"text":"No teammates have their ults ready!","color":"aqua"}]

execute if score #redUlts multiItems matches 0 run tellraw @s[team=Blue] [{"text":"No enemies have their ults ready!","color":"aqua"}]

execute if score #blueUlts multiItems matches 0 run tellraw @s[team=Blue] [{"text":"No teammates have their ults ready!","color":"aqua"}]

clear @s carrot_on_a_stick[custom_data={inspection:1b}] 1

scoreboard players set #redUlts multiItems 0

scoreboard players set #blueUlts multiItems 0

