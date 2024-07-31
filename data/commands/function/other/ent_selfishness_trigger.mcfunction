scoreboard players add @s[tag=inCurrentMatch] entSelfishness 1

execute if score @s entSelfishness matches 20.. run advancement grant @s only commands:hidden_advancements/ent_selfishness

advancement revoke @s only commands:hidden_advancements/ent_selfishness_trigger