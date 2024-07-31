attribute @s minecraft:generic.armor modifier add 7-0-4-100-0 "NapalmBucketArmorShred" -4 add_value

tellraw @s {"text": "You got napalm all over you!","color": "yellow"}

scoreboard players set @s RSAttr.NapalmBucketArmorShred 0