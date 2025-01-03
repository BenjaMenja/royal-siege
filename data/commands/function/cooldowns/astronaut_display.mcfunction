#Store Values

scoreboard players operation @s asteroidStore = @s asteroidTimer

execute store result score @s asteroidDis run scoreboard players operation @s asteroidStore /= #ticks constant

scoreboard players operation @s wrenchStore = @s wrenchTimer

execute store result score @s wrenchDis run scoreboard players operation @s wrenchStore /= #ticks constant

execute if entity @s[tag=upgraded] run scoreboard players operation @s astroPassStore = @s astroPassTimer

execute if entity @s[tag=upgraded] store result score @s astroPassDis run scoreboard players operation @s astroPassStore /= #ticks constant

scoreboard players operation @s debrisStore = @s debrisTimer

execute store result score @s debrisDis run scoreboard players operation @s debrisStore /= #ticks constant

scoreboard players operation @s gravityStore = @s gravityTimer

execute store result score @s gravityDis run scoreboard players operation @s gravityStore /= #ticks constant

#Displays

title @s[predicate=!commands:inventory/debris_cannon,predicate=!commands:inventory/gravity_canceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/debris_cannon,predicate=!commands:inventory/gravity_canceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/debris_cannon,predicate=!commands:inventory/gravity_canceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/debris_cannon,predicate=commands:inventory/gravity_canceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/debris_cannon,predicate=!commands:inventory/gravity_canceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/debris_cannon,predicate=!commands:inventory/gravity_canceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/debris_cannon,predicate=commands:inventory/gravity_canceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/debris_cannon,predicate=!commands:inventory/gravity_canceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/debris_cannon,predicate=commands:inventory/gravity_canceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/debris_cannon,predicate=!commands:inventory/gravity_canceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/debris_cannon,predicate=commands:inventory/gravity_canceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/debris_cannon,predicate=commands:inventory/gravity_canceler,tag=!upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/debris_cannon,predicate=!commands:inventory/gravity_canceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/debris_cannon,predicate=commands:inventory/gravity_canceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/debris_cannon,predicate=commands:inventory/gravity_canceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/debris_cannon,predicate=commands:inventory/gravity_canceler,tag=upgraded] actionbar [{"text":"Fine Tuning: ","color":"green"},{"score":{"name":"*","objective":"wrenchDis"},"color":"aqua"},{"text":"   Asteroid: ","color":"green"},{"score":{"name":"*","objective":"asteroidDis"},"color":"aqua"},{"text":"   Gravity Canceler: ","color":"green"},{"score":{"name":"*","objective":"gravityDis"},"color":"aqua"},{"text":"   Debris Cannon: ","color":"green"},{"score":{"name":"*","objective":"debrisDis"},"color":"aqua"},{"text":"   Explosive Landing: ","color":"green"},{"score":{"name":"*","objective":"astroPassDis"},"color":"aqua"}]



