scoreboard players operation @s basketStore = @s basketTimer

execute store result score @s basketDis run scoreboard players operation @s basketStore /= #ticks constant

scoreboard players operation @s scrambleStore = @s scrambleTimer

execute store result score @s scrambleDis run scoreboard players operation @s scrambleStore /= #ticks constant

scoreboard players operation @s payRaiseStore = @s payRaiseTimer

execute store result score @s payRaiseDis run scoreboard players operation @s payRaiseStore /= #ticks constant

title @s[predicate=!commands:inventory/scrambled_eggs,predicate=!commands:inventory/pay_raise] actionbar [{"text":"Mystery Basket: ","color":"green"},{"score":{"name":"*","objective":"basketDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/scrambled_eggs,predicate=!commands:inventory/pay_raise] actionbar [{"text":"Mystery Basket: ","color":"green"},{"score":{"name":"*","objective":"basketDis"},"color":"aqua"},{"text":"   Scrambled Eggs: ","color":"green"},{"score":{"name":"*","objective":"scrambleDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/scrambled_eggs,predicate=commands:inventory/pay_raise] actionbar [{"text":"Mystery Basket: ","color":"green"},{"score":{"name":"*","objective":"basketDis"},"color":"aqua"},{"text":"   Pay Raise: ","color":"green"},{"score":{"name":"*","objective":"payRaiseDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/scrambled_eggs,predicate=commands:inventory/pay_raise] actionbar [{"text":"Mystery Basket: ","color":"green"},{"score":{"name":"*","objective":"basketDis"},"color":"aqua"},{"text":"   Scrambled Eggs: ","color":"green"},{"score":{"name":"*","objective":"scrambleDis"},"color":"aqua"},{"text":"   Pay Raise: ","color":"green"},{"score":{"name":"*","objective":"payRaiseDis"},"color":"aqua"}]
