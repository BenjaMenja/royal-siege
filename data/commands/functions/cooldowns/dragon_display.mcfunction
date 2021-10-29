scoreboard players operation @s dRageStore = @s dragonRageTimer

execute store result score @s dRageDis run scoreboard players operation @s dRageStore /= #ticks constant

scoreboard players operation @s dRushStore = @s dragonRushTimer

execute store result score @s dRushDis run scoreboard players operation @s dRushStore /= #ticks constant

execute if entity @s[predicate=commands:inventory/crystal_cannon] run scoreboard players operation @s cCannonStore = @s cCannonTimer

execute if entity @s[predicate=commands:inventory/crystal_cannon] store result score @s cCannonDis run scoreboard players operation @s cCannonStore /= #ticks constant

title @s[predicate=!commands:inventory/crystal_cannon] actionbar [{"text":"Dragon Rage: ","color":"green"},{"score":{"name":"*","objective":"dRageDis"},"color":"aqua"},{"text":"   Dragon Rush: ","color":"green"},{"score":{"name":"*","objective":"dRushDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/crystal_cannon] actionbar [{"text":"Dragon Rage: ","color":"green"},{"score":{"name":"*","objective":"dRageDis"},"color":"aqua"},{"text":"   Dragon Rush: ","color":"green"},{"score":{"name":"*","objective":"dRushDis"},"color":"aqua"},{"text":"   Crystal Cannon: ","color":"green"},{"score":{"name":"*","objective":"cCannonDis"},"color":"aqua"}]