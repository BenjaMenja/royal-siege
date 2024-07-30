scoreboard players operation @s fakeStore = @s fakeTimer

execute store result score @s fakeDis run scoreboard players operation @s fakeStore /= #ticks constant

scoreboard players operation @s blunderStore = @s blunderTimer

execute store result score @s blunderDis run scoreboard players operation @s blunderStore /= #ticks constant

scoreboard players operation @s coinGunStore = @s coinGunTimer

execute store result score @s coinGunDis run scoreboard players operation @s coinGunStore /= #ticks constant

scoreboard players operation @s cHookStore = @s cHookCD

execute store result score @s cHookDis run scoreboard players operation @s cHookStore /= #ticks constant

title @s[predicate=!commands:inventory/chain_hook,predicate=!commands:inventory/coin_gun] actionbar [{"text":"Fake Money: ","color":"green"},{"score":{"name":"*","objective":"fakeDis"},"color":"aqua"},{"text":"   Blunderbuss: ","color":"green"},{"score":{"name":"*","objective":"blunderDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/chain_hook,predicate=commands:inventory/coin_gun] actionbar [{"text":"Fake Money: ","color":"green"},{"score":{"name":"*","objective":"fakeDis"},"color":"aqua"},{"text":"   Blunderbuss: ","color":"green"},{"score":{"name":"*","objective":"blunderDis"},"color":"aqua"},{"text":"   Coin Gun: ","color":"green"},{"score":{"name":"*","objective":"coinGunDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/chain_hook,predicate=!commands:inventory/coin_gun] actionbar [{"text":"Fake Money: ","color":"green"},{"score":{"name":"*","objective":"fakeDis"},"color":"aqua"},{"text":"   Blunderbuss: ","color":"green"},{"score":{"name":"*","objective":"blunderDis"},"color":"aqua"},{"text":"   Chain Hook: ","color":"green"},{"score":{"name":"*","objective":"cHookDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/chain_hook,predicate=commands:inventory/coin_gun] actionbar [{"text":"Fake Money: ","color":"green"},{"score":{"name":"*","objective":"fakeDis"},"color":"aqua"},{"text":"   Blunderbuss: ","color":"green"},{"score":{"name":"*","objective":"blunderDis"},"color":"aqua"},{"text":"   Coin Gun: ","color":"green"},{"score":{"name":"*","objective":"coinGunDis"},"color":"aqua"},{"text":"   Chain Hook: ","color":"green"},{"score":{"name":"*","objective":"cHookDis"},"color":"aqua"}]

