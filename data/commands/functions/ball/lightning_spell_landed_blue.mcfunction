kill @s

execute at @a[team=Red,distance=..4,predicate=!commands:in_tdm_gates] run summon lightning_bolt

execute at @a[team=Red,distance=..4,predicate=!commands:in_tdm_gates] run summon area_effect_cloud ~ ~ ~ {Age:-2147483646,Tags:["l_message"]}
