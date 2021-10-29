#Store Values

scoreboard players operation @s asteroidStore = @s asteroidTimer

execute store result score @s asteroidDis run scoreboard players operation @s asteroidStore /= #ticks constant

scoreboard players operation @s wrenchStore = @s wrenchTimer

execute store result score @s wrenchDis run scoreboard players operation @s wrenchStore /= #ticks constant

execute if entity @s[tag=upgraded] run scoreboard players operation @s astroPassStore = @s astroPassTimer

execute if entity @s[tag=upgraded] store result score @s astroPassDis run scoreboard players operation @s astroPassStore /= #ticks constant

execute if entity @s[tag=hasGasVacuum] run scoreboard players operation @s gasVacStore = @s gasVacTimer

execute if entity @s[tag=hasGasVacuum] store result score @s gasVacDis run scoreboard players operation @s gasVacStore /= #ticks constant

execute if entity @s[tag=hasDebrisCannon] run scoreboard players operation @s debrisStore = @s debrisTimer

execute if entity @s[tag=hasDebrisCannon] store result score @s debrisDis run scoreboard players operation @s debrisStore /= #ticks constant

execute if entity @s[tag=hasGravityCanceler] run scoreboard players operation @s gravityStore = @s gravityTimer

execute if entity @s[tag=hasGravityCanceler] store result score @s gravityDis run scoreboard players operation @s gravityStore /= #ticks constant

#Displays

title @s[tag=!hasGasVacuum,tag=!hasDebrisCannon,tag=!hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"}]

title @s[tag=hasGasVacuum,tag=!hasDebrisCannon,tag=!hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"}]

title @s[tag=!hasGasVacuum,tag=hasDebrisCannon,tag=!hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"}]

title @s[tag=!hasGasVacuum,tag=!hasDebrisCannon,tag=hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @s[tag=!hasGasVacuum,tag=!hasDebrisCannon,tag=!hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[tag=hasGasVacuum,tag=hasDebrisCannon,tag=!hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"}]

title @s[tag=hasGasVacuum,tag=!hasDebrisCannon,tag=hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @s[tag=hasGasVacuum,tag=!hasDebrisCannon,tag=!hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[tag=!hasGasVacuum,tag=hasDebrisCannon,tag=hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @s[tag=!hasGasVacuum,tag=hasDebrisCannon,tag=!hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[tag=!hasGasVacuum,tag=!hasDebrisCannon,tag=hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[tag=hasGasVacuum,tag=hasDebrisCannon,tag=hasGravityCanceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @s[tag=hasGasVacuum,tag=hasDebrisCannon,tag=!hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[tag=hasGasVacuum,tag=!hasDebrisCannon,tag=hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[tag=!hasGasVacuum,tag=hasDebrisCannon,tag=hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[tag=hasGasVacuum,tag=hasDebrisCannon,tag=hasGravityCanceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gas Vacuum: ","color":"green"},{"score":{"name":"*","objective":"gasVacDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]



