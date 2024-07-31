tag @s[tag=!absShield] add absShieldTemp

tag @s[tag=!absShield] add absShield

tag @s[tag=absShieldTemp] add absStop

tag @s remove absShieldTemp

tag @s[tag=!absStop] add absShieldEnd

execute as @a[tag=absShield,tag=!absStop,tag=absShieldEnd] run function commands:replace/absorption_shield_replace

tag @s[tag=absShield,tag=!absStop,tag=absShieldEnd] remove absShield

tag @s remove absStop

tag @s remove absShieldEnd