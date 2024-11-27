execute if entity @s[advancements={commands:trauma_scissors=true}] run scoreboard players set @s bleedLevel 1

scoreboard players set @s[advancements={commands:trauma_scissors=true}] bleedTimer 60

advancement revoke @s only commands:trauma_scissors