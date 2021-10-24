#Store Values

execute as @a[scores={Kit=14}] run scoreboard players operation @s asteroidStore = @s asteroidTimer

execute as @a[scores={Kit=14}] store result score @s asteroidDis run scoreboard players operation @s asteroidStore /= #ticks constant

execute as @a[scores={Kit=14}] run scoreboard players operation @s wrenchStore = @s wrenchTimer

execute as @a[scores={Kit=14}] store result score @s wrenchDis run scoreboard players operation @s wrenchStore /= #ticks constant

execute as @a[scores={Kit=14},tag=upgraded] run scoreboard players operation @s astroPassStore = @s astroPassTimer

execute as @a[scores={Kit=14},tag=upgraded] store result score @s astroPassDis run scoreboard players operation @s astroPassStore /= #ticks constant

execute as @a[scores={Kit=14},tag=hasGasVacuum] run scoreboard players operation @s gasVacStore = @s gasVacTimer

execute as @a[scores={Kit=14},tag=hasGasVacuum] store result score @s gasVacDis run scoreboard players operation @s gasVacStore /= #ticks constant

execute as @a[scores={Kit=14},tag=hasDebrisCannon] run scoreboard players operation @s debrisStore = @s debrisTimer

execute as @a[scores={Kit=14},tag=hasDebrisCannon] store result score @s debrisDis run scoreboard players operation @s debrisStore /= #ticks constant

execute as @a[scores={Kit=14},tag=hasGravityCanceler] run scoreboard players operation @s gravityStore = @s gravityTimer

execute as @a[scores={Kit=14},tag=hasGravityCanceler] store result score @s gravityDis run scoreboard players operation @s gravityStore /= #ticks constant

#Displays

title @a[scores={Kit=14},tag=!hasGasVacuum,tag=!hasDebrisCannon,tag=!hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=hasGasVacuum,tag=!hasDebrisCannon,tag=!hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=!hasGasVacuum,tag=hasDebrisCannon,tag=!hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=!hasGasVacuum,tag=!hasDebrisCannon,tag=hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=!hasGasVacuum,tag=!hasDebrisCannon,tag=!hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=hasGasVacuum,tag=hasDebrisCannon,tag=!hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=hasGasVacuum,tag=!hasDebrisCannon,tag=hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=hasGasVacuum,tag=!hasDebrisCannon,tag=!hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=!hasGasVacuum,tag=hasDebrisCannon,tag=hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=!hasGasVacuum,tag=hasDebrisCannon,tag=!hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=!hasGasVacuum,tag=!hasDebrisCannon,tag=hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=hasGasVacuum,tag=hasDebrisCannon,tag=hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=hasGasVacuum,tag=hasDebrisCannon,tag=!hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=hasGasVacuum,tag=!hasDebrisCannon,tag=hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=!hasGasVacuum,tag=hasDebrisCannon,tag=hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @a[scores={Kit=14},tag=hasGasVacuum,tag=hasDebrisCannon,tag=hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]



