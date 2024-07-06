scoreboard players operation @s glowingStore = @s glowingEffectCD

execute store result score @s glowingDis run scoreboard players operation @s glowingStore /= #ticks constant

title @s actionbar [{"text":"Glowing Effect: ","color":"green"},{"score":{"name":"*","objective":"glowingDis"},"color":"aqua"}]