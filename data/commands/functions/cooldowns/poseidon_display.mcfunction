scoreboard players operation @s lightningStore = @s poseidonPassive

execute store result score @s lightningDis run scoreboard players operation @s lightningStore /= #ticks constant

scoreboard players operation @s fishCannonStore = @s fishCannonTimer

execute store result score @s fishCannonDis run scoreboard players operation @s fishCannonStore /= #ticks constant

scoreboard players operation @s squidzookaStore = @s squidzookaTimer

execute store result score @s squidzookaDis run scoreboard players operation @s squidzookaStore /= #ticks constant

title @s[predicate=!commands:inventory/fish_cannon,predicate=!commands:inventory/squidzooka] actionbar [{"text":"Lightning Spell: ","color":"green"},{"score":{"name":"*","objective":"lightningDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/fish_cannon,predicate=!commands:inventory/squidzooka] actionbar [{"text":"Lightning Spell: ","color":"green"},{"score":{"name":"*","objective":"lightningDis"},"color":"aqua"},{"text":"Fish Cannon: ","color":"green"},{"score":{"name":"*","objective":"fishCannonDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/fish_cannon,predicate=commands:inventory/squidzooka] actionbar [{"text":"Lightning Spell: ","color":"green"},{"score":{"name":"*","objective":"lightningDis"},"color":"aqua"},{"text":"Squidzooka: ","color":"green"},{"score":{"name":"*","objective":"squidzookaDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/fish_cannon,predicate=commands:inventory/squidzooka] actionbar [{"text":"Lightning Spell: ","color":"green"},{"score":{"name":"*","objective":"lightningDis"},"color":"aqua"},{"text":"Fish Cannon: ","color":"green"},{"score":{"name":"*","objective":"fishCannonDis"},"color":"aqua"},{"text":"Squidzooka: ","color":"green"},{"score":{"name":"*","objective":"squidzookaDis"},"color":"aqua"}]