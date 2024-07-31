function commands:other/get_highest_money_player

data modify entity @s[team=Red] AngryAt set from entity @a[limit=1,tag=highestmoneyblue,team=Blue] UUID

data modify entity @s[team=Blue] AngryAt set from entity @a[limit=1,tag=highestmoneyred,team=Red] UUID

scoreboard players reset @s securityTimer