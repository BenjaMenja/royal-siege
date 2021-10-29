scoreboard players operation @s hFruitStore = @s hFruitTimer

execute store result score @s hFruitDis run scoreboard players operation @s hFruitStore /= #ticks constant

scoreboard players operation @s blossomStore = @s blossomTimer

execute store result score @s blossomDis run scoreboard players operation @s blossomStore /= #ticks constant

scoreboard players operation @s rootingStore = @s rootingTimer

execute store result score @s rootingDis run scoreboard players operation @s rootingStore /= #ticks constant

title @s actionbar [{"text":"Healing Fruit: ","color":"green"},{"score":{"name":"*","objective":"hFruitDis"},"color":"aqua"},{"text":"   Blossom: ","color":"green"},{"score":{"name":"*","objective":"blossomDis"},"color":"aqua"},{"text":"   Rooting Spell: ","color":"green"},{"score":{"name":"*","objective":"rootingDis"},"color":"aqua"}]