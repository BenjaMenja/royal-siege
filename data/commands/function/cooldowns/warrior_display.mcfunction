scoreboard players operation @s slamStore = @s WarriorItem

scoreboard players operation @s exChargeStore = @s exCharge

execute store result score @s slamDis run scoreboard players operation @s slamStore /= #ticks constant

execute store result score @s exChargeDis run scoreboard players operation @s exChargeStore /= #ticks constant

title @s actionbar [{"text":"Seismic Slam: ","color":"green"},{"score":{"name":"*","objective":"slamDis"},"color":"aqua"},{"text":"     "},{"text":"Explosive Charge: ","color":"green"},{"score":{"name":"*","objective":"exChargeDis"},"color":"aqua"}]
