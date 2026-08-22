execute store result entity @s Motion[0] double 0.0025 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[1] double 0.0025 run data get entity @s Motion[1] 1000
execute store result entity @s Motion[2] double 0.0025 run data get entity @s Motion[2] 1000

data modify entity @s PierceLevel set value 99

# This might sound like a huge damage nerf but its to compensate the extreme damage the speed buff gives
data modify entity @s damage set value 0.1f

scoreboard players set @p[scores={supersonicArrowToggle=1},distance=..5] supersonicArrowTimer 240

execute as @p[scores={supersonicArrowToggle=1},distance=..5] run function commands:abilities/ability_uses/supersonic_arrow_toggle
