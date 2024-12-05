attribute @s minecraft:gravity modifier add 12-1-100-2-0 -0.08 add_value

execute unless score @s RSAttr.StickyBootsGravity matches -2147483648..2147483647 run tp @s @s

scoreboard players set @s RSAttr.StickyBootsGravity 0