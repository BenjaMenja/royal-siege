scoreboard players operation @s lightningStaffStore = @s LightningTimer

execute store result score @s lightningStaffDis run scoreboard players operation @s lightningStaffStore /= #lightningstaffcd constant

scoreboard players operation @s fireballStore = @s FireballTimer

execute store result score @s fireballDis run scoreboard players operation @s fireballStore /= #ticks constant

scoreboard players operation @s expBombStore = @s expBombTimer

execute store result score @s expBombDis run scoreboard players operation @s expBombStore /= #ticks constant

scoreboard players operation @s ejectStore = @s ejectTimer

execute store result score @s ejectDis run scoreboard players operation @s ejectStore /= #ticks constant

scoreboard players operation @s witherStore = @s witherTimer

execute store result score @s witherDis run scoreboard players operation @s witherStore /= #ticks constant

title @s[predicate=!commands:inventory/exp_blaster] actionbar [{"text":"Lightning Staff: ","color":"green"},{"score":{"name":"*","objective":"lightningStaffDis"},"color":"aqua"},{"text":"   Fireball: ","color":"green"},{"score":{"name":"*","objective":"fireballDis"},"color":"aqua"},{"text":"   Eject Button: ","color":"green"},{"score":{"name":"*","objective":"ejectDis"},"color":"aqua"},{"text":"   Withering Potion: ","color":"green"},{"score":{"name":"*","objective":"witherDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/exp_blaster] actionbar [{"text":"Lightning Staff: ","color":"green"},{"score":{"name":"*","objective":"lightningStaffDis"},"color":"aqua"},{"text":"   Fireball: ","color":"green"},{"score":{"name":"*","objective":"fireballDis"},"color":"aqua"},{"text":"   Eject Button: ","color":"green"},{"score":{"name":"*","objective":"ejectDis"},"color":"aqua"},{"text":"   Withering Potion: ","color":"green"},{"score":{"name":"*","objective":"witherDis"},"color":"aqua"},{"text":"   Exp. Bomb Blaster: ","color":"green"},{"score":{"name":"*","objective":"expBombDis"},"color":"aqua"}]