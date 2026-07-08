execute if entity @s[predicate=commands:location/battlefields/in_any_battlefield,predicate=!commands:location/practice_range/in_practice_range] run tag @s add homewarp

execute unless entity @s[predicate=commands:location/battlefields/in_any_battlefield,predicate=!commands:location/practice_range/in_practice_range] run tellraw @s {"text":"Unable to use while not in a match.", "color":"red"}