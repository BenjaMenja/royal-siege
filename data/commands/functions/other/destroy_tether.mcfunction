execute if entity @s[tag=redTether] run tellraw @a[team=Red,tag=tethered] {"text":"Your tether has broken!","color":"aqua"}

execute if entity @s[tag=blueTether] run tellraw @a[team=Blue,tag=tethered] {"text":"Your tether has broken!","color":"aqua"}

execute if entity @s[tag=redTether] run clear @a[team=Red,tag=tethered] carrot[custom_data~{safetytether:1b}]

execute if entity @s[tag=blueTether] run clear @a[team=Blue,tag=tethered] carrot[custom_data~{safetytether:1b}]

execute if entity @s[tag=redTether] run tag @a[team=Red,tag=tethered] remove tethered

execute if entity @s[tag=blueTether] run tag @a[team=Blue,tag=tethered] remove tethered

kill @s