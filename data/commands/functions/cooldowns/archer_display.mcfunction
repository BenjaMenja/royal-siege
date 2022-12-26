scoreboard players operation @s olympicVaultStore = @s olympicVaultTimer

execute store result score @s olympicVaultDis run scoreboard players operation @s olympicVaultStore /= #ticks constant

scoreboard players operation @s glowingStore = @s glowingEffectCD

execute store result score @s glowingDis run scoreboard players operation @s glowingStore /= #ticks constant

title @s[predicate=!commands:inventory/olympic_vault] actionbar [{"text":"Glowing Effect: ","color":"green"},{"score":{"name":"*","objective":"glowingDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/olympic_vault] actionbar [{"text":"Glowing Effect: ","color":"green"},{"score":{"name":"*","objective":"glowingDis"},"color":"aqua"},{"text":"      Olympic Vault: ","color":"green"},{"score":{"name":"*","objective":"olympicVaultDis"},"color":"aqua"}]