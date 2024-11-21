tag @s add this

scoreboard players operation #search UUID = @s UUID

execute as @a if score @s UUID = #search UUID at @s run tp @e[type=text_display,tag=healthDisplay,tag=this,limit=1] ~ ~2 ~

execute as @a if score @s UUID = #search UUID run data modify entity @e[type=text_display,tag=healthDisplay,tag=this,limit=1] text set value '[{"selector":"@p"},{"text":"\\n"},{"text": "Health: ","color": "white"},{"score":{"name":"@p","objective":"Health"},"color": "green"}]'

tag @s remove this