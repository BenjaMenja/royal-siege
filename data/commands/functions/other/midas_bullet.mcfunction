tag @a[advancements={commands:midas_bullet=true},team=Red] add moneysteal

tag @a[advancements={commands:midas_bullet=true},team=Blue] add moneystealblue

scoreboard players remove @a[tag=moneysteal] Money 100

scoreboard players remove @a[tag=moneystealblue] Money 100

execute if entity @a[tag=moneysteal] run scoreboard players add @a[team=Blue,scores={Kit=10}] Money 100

execute if entity @a[tag=moneystealblue] run scoreboard players add @a[team=Red,scores={Kit=10}] Money 100

tag @a remove moneysteal

tag @a remove moneystealblue

advancement revoke @a[advancements={commands:midas_bullet=true}] only commands:midas_bullet





