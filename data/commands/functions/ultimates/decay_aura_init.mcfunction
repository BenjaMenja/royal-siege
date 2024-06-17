tag @s add decay

tellraw @a [{"selector":"@s"},{"text":" is emitting a decaying aura!"}]

execute if entity @s[team=Red] run playsound royalsiege:ultimates.decay_aura_friendly master @a[team=Red] ~ ~ ~ 100 1

execute if entity @s[team=Red] run playsound royalsiege:ultimates.decay_aura_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.decay_aura_friendly master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.decay_aura_enemy master @a[team=Red] ~ ~ ~ 100 1

clear @s carrot_on_a_stick[custom_data~{decay:1b}]