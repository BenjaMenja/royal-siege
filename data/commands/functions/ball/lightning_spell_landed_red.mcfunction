execute if score #poseidonvoicered voicelineCD matches 60.. run playsound royalsiege:abilities.lightning_spell master @a[team=Blue,distance=..4] ~ ~ ~ 1 1

execute at @a[team=Blue,distance=..4,predicate=!commands:in_tdm_gates] run summon lightning_bolt

execute at @a[team=Blue,distance=..4,predicate=!commands:in_tdm_gates] run summon area_effect_cloud ~ ~ ~ {Age:-2147483646,Tags:["l_message"]}

kill @s