summon minecraft:text_display ~ ~ ~ {view_range:0.375f,billboard:"center",teleport_duration:1,see_through:0b,Tags:["healthDisplayTempSpawn","healthDisplay"],text:'[{"selector":"@p"},{"text":"\\n"},"Health: ",{"score":{"name":"@p","objective":"Health"}}]'}

scoreboard players operation @e[type=text_display,tag=healthDisplayTempSpawn,limit=1] UUID = @s UUID

tag @e[tag=healthDisplayTempSpawn] remove healthDisplayTempSpawn