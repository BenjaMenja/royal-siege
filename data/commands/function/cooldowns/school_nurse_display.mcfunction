execute run scoreboard players operation @s ivDripStore = @s ivDripTimer

execute store result score @s ivDripDis run scoreboard players operation @s ivDripStore /= #ticks constant

scoreboard players operation @s icePackStore = @s icePackTimer

execute store result score @s icePackDis run scoreboard players operation @s icePackStore /= #ticks constant

scoreboard players operation @s defibrillatorStore = @s defibrillatorTimer

execute store result score @s defibrillatorDis run scoreboard players operation @s defibrillatorStore /= #ticks constant

title @s[predicate=!commands:inventory/defibrillator,tag=!upgraded] actionbar [{"text":"IV Drip: ","color":"green"},{"score":{"name":"*","objective":"ivDripDis"},"color":"aqua"},{"text":"   Ice Pack: ","color":"green"},{"score":{"name":"*","objective":"icePackDis"},"color":"aqua"},{"text":"   Resourceful: ","color":"green"},{"score":{"name":"*","objective":"icePackPassive"},"color":"aqua"},{"text":"/8"}]

title @s[predicate=commands:inventory/defibrillator,tag=!upgraded] actionbar [{"text":"IV Drip: ","color":"green"},{"score":{"name":"*","objective":"ivDripDis"},"color":"aqua"},{"text":"   Ice Pack: ","color":"green"},{"score":{"name":"*","objective":"icePackDis"},"color":"aqua"},{"text":"   Defibrillator: ","color":"green"},{"score":{"name":"*","objective":"defibrillatorDis"},"color":"aqua"},{"text":"   Resourceful: ","color":"green"},{"score":{"name":"*","objective":"icePackPassive"},"color":"aqua"},{"text":"/8"}]

title @s[predicate=!commands:inventory/defibrillator,tag=upgraded] actionbar [{"text":"IV Drip: ","color":"green"},{"score":{"name":"*","objective":"ivDripDis"},"color":"aqua"},{"text":"   Ice Pack: ","color":"green"},{"score":{"name":"*","objective":"icePackDis"},"color":"aqua"},{"text":"   Resourceful: ","color":"green"},{"score":{"name":"*","objective":"icePackPassive"},"color":"aqua"},{"text":"/6"}]

title @s[predicate=commands:inventory/defibrillator,tag=upgraded] actionbar [{"text":"IV Drip: ","color":"green"},{"score":{"name":"*","objective":"ivDripDis"},"color":"aqua"},{"text":"   Ice Pack: ","color":"green"},{"score":{"name":"*","objective":"icePackDis"},"color":"aqua"},{"text":"   Defibrillator: ","color":"green"},{"score":{"name":"*","objective":"defibrillatorDis"},"color":"aqua"},{"text":"   Resourceful: ","color":"green"},{"score":{"name":"*","objective":"icePackPassive"},"color":"aqua"},{"text":"/6"}]
