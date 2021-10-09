kill @s

execute if score #poseidonvoiceblue voicelineCD matches 60.. run playsound royalsiege:abilities.lightning_spell master @a[team=Red,distance=..4] ~ ~ ~ 1 1

execute at @a[team=Red,distance=..4,predicate=!commands:in_tdm_gates] run summon lightning_bolt

execute at @a[team=Red,distance=..4,predicate=!commands:in_tdm_gates] run summon area_effect_cloud ~ ~ ~ {Age:-2147483646,Tags:["l_message"]}
