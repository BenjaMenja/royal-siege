tag @s[tag=!absShield] add absShieldTemp

tag @s[tag=!absShield] add absShield

tag @s[tag=absShieldTemp] add absStop

tag @s remove absShieldTemp

tag @s[tag=!absStop] add absShieldEnd

execute as @a[tag=absShield,tag=!absStop,tag=absShieldEnd] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{absorptionshield:1b}}}} run item modify entity @s weapon.mainhand commands:hide_enchant_glint

execute as @a[tag=absShield,tag=!absStop,tag=absShieldEnd] if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{absorptionshield:1b}}}}} run item modify entity @s weapon.offhand commands:hide_enchant_glint

execute as @a[tag=absShield,tag=!absStop,tag=absShieldEnd] run scoreboard players reset @s absShieldCD

tag @s[tag=absShield,tag=!absStop,tag=absShieldEnd] remove absShield

tag @s remove absStop

tag @s remove absShieldEnd