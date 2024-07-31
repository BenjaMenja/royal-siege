execute if entity @s[team=Blue] run tellraw @a[team=Red] {"text":"Virus Detected!","color":"red"}

execute if entity @s[team=Red] run tellraw @a[team=Blue] {"text":"Virus Detected!","color":"red"}

tellraw @s {"text":"You were detected by a Virus Detector!","color":"red"}

scoreboard players set @s RSAttr.Rooted 100

function commands:attributes/adds/add_rooted

execute at @s run summon lightning_bolt