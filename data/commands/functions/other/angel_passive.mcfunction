#Calculate lowest health person

execute if entity @s[tag=HSRed] as @p[tag=!HSfound,team=Red] if score @s Health < #redHS HSValue run scoreboard players operation #redHS HSValue = @s Health

execute if entity @s[tag=HSRed] run tag @p[tag=!HSfound,team=Red] add HSfound

execute if entity @s[tag=HSRed] if entity @a[limit=1,team=Red,tag=!HSfound] run function commands:other/angel_passive

execute if entity @s[tag=HSBlue] as @p[tag=!HSfound,team=Blue] if score @s Health < #blueHS HSValue run scoreboard players operation #blueHS HSValue = @s Health

execute if entity @s[tag=HSBlue] run tag @p[tag=!HSfound,team=Blue] add HSfound

execute if entity @s[tag=HSBlue] if entity @a[limit=1,team=Blue,tag=!HSfound] run function commands:other/angel_passive

#Apply Healing

execute if entity @s[tag=HSRed] as @a[team=Red] if score @s Health = #redHS HSValue run effect give @s instant_health

execute if entity @s[tag=HSBlue] as @a[team=Blue] if score @s Health = #blueHS HSValue run effect give @s instant_health

#Reset Variables

tag @a remove HSfound

scoreboard players set #redHS HSValue 100

scoreboard players set #blueHS HSValue 100

scoreboard players reset @s HSTimer

