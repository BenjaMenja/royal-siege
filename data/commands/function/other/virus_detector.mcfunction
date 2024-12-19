execute if entity @s[team=Blue] run tellraw @a[team=Red] {"text":"Virus Detected!","color":"red"}

execute if entity @s[team=Red] run tellraw @a[team=Blue] {"text":"Virus Detected!","color":"red"}

tellraw @s {"text":"You were detected by a Virus Detector!","color":"red"}

execute if entity @s[team=Red] run clear @a[team=Blue,predicate=commands:holding/virus_detector] carrot[custom_data~{virusdetector:1b}] 1

execute if entity @s[team=Blue] run clear @a[team=Red,predicate=commands:holding/virus_detector] carrot[custom_data~{virusdetector:1b}] 1

scoreboard players set @s RSAttr.Rooted 100

function commands:attributes/adds/add_rooted

execute at @s[predicate=!commands:in_tdm_gates] run summon lightning_bolt