execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{fryingpan:1b}}}}] run scoreboard players operation @s damagePan += @s damage

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{fryingpan:1b}}}}] at @s run playsound block.bell.use master @s ~ ~ ~ 1 1.1
