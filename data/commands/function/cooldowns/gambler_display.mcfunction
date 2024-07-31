scoreboard players operation @s pCardStore = @s pCardsTimer

execute store result score @s pCardDis run scoreboard players operation @s pCardStore /= #ticks constant

execute if entity @s[predicate=commands:inventory/russian_roulette] run scoreboard players operation @s rouletteStore = @s rouletteTimer

execute if entity @s[predicate=commands:inventory/russian_roulette] store result score @s rouletteDis run scoreboard players operation @s rouletteStore /= #ticks constant

execute if entity @s[predicate=commands:inventory/coin_gun] run scoreboard players operation @s coinGunStore = @s coinGunTimer

execute if entity @s[predicate=commands:inventory/coin_gun] store result score @s coinGunDis run scoreboard players operation @s coinGunStore /= #ticks constant

title @s[predicate=!commands:inventory/russian_roulette,predicate=!commands:inventory/coin_gun] actionbar [{"text":"Playing Cards: ","color":"green"},{"score":{"name":"*","objective":"pCardDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/russian_roulette,predicate=!commands:inventory/coin_gun] actionbar [{"text":"Playing Cards: ","color":"green"},{"score":{"name":"*","objective":"pCardDis"},"color":"aqua"},{"text":"   Russian Roulette: ","color":"green"},{"score":{"name":"*","objective":"rouletteDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/russian_roulette,predicate=commands:inventory/coin_gun] actionbar [{"text":"Playing Cards: ","color":"green"},{"score":{"name":"*","objective":"pCardDis"},"color":"aqua"},{"text":"   Coin Gun: ","color":"green"},{"score":{"name":"*","objective":"coinGunDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/russian_roulette,predicate=commands:inventory/coin_gun] actionbar [{"text":"Playing Cards: ","color":"green"},{"score":{"name":"*","objective":"pCardDis"},"color":"aqua"},{"text":"   Russian Roulette: ","color":"green"},{"score":{"name":"*","objective":"rouletteDis"},"color":"aqua"},{"text":"   Coin Gun: ","color":"green"},{"score":{"name":"*","objective":"coinGunDis"},"color":"aqua"}]