scoreboard players operation @s dSpellStore = @s defensiveSpell

execute store result score @s dSpellDis run scoreboard players operation @s dSpellStore /= #ticks constant

scoreboard players operation @s turretStore = @s turretTimer

execute store result score @s turretDis run scoreboard players operation @s turretStore /= #ticks constant

title @s[predicate=!commands:inventory/absorption_shield] actionbar [{"text":"Defensive Spell: ","color":"green"},{"score":{"name":"*","objective":"dSpellDis"},"color":"aqua"},{"text":"   Turret: ","color":"green"},{"score":{"name":"*","objective":"turretDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/absorption_shield] actionbar [{"text":"Defensive Spell: ","color":"green"},{"score":{"name":"*","objective":"dSpellDis"},"color":"aqua"},{"text":"   Turret: ","color":"green"},{"score":{"name":"*","objective":"turretDis"},"color":"aqua"},{"text":"   Absorption Shield: ","color":"green"},{"score":{"name":"*","objective":"absShieldCount"},"color":"aqua"},{"text":"/80","color":"green"}]