execute if entity @s[predicate=commands:in_any_battlefield,predicate=!commands:in_practice_range] run tag @s add homewarp

execute unless entity @s[predicate=commands:in_any_battlefield,predicate=!commands:in_practice_range] run tellraw @s {"text":"Unable to use while not in a match.", "color":"red"}