scoreboard players operation @s fakeStore = @s fakeTimer

execute store result score @s fakeDis run scoreboard players operation @s fakeStore /= #ticks constant

scoreboard players operation @s lavaTrapStore = @s lavaTrapTimer

execute store result score @s lavaTrapDis run scoreboard players operation @s lavaTrapStore /= #ticks constant

scoreboard players operation @s cHookStore = @s cHookCD

execute store result score @s cHookDis run scoreboard players operation @s cHookStore /= #ticks constant

title @s[predicate=commands:inventory/chain_hook] actionbar [{"text":"Fake Money: ","color":"green"},{"score":{"name":"*","objective":"fakeDis"},"color":"aqua"},{"text":"   Lava Trap: ","color":"green"},{"score":{"name":"*","objective":"lavaTrapDis"},"color":"aqua"},{"text":"   Chain Hook: ","color":"green"},{"score":{"name":"*","objective":"cHookDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/chain_hook] actionbar [{"text":"Fake Money: ","color":"green"},{"score":{"name":"*","objective":"fakeDis"},"color":"aqua"},{"text":"   Lava Trap: ","color":"green"},{"score":{"name":"*","objective":"lavaTrapDis"},"color":"aqua"}]