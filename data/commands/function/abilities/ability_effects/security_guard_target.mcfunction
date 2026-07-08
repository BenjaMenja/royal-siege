function commands:utils/money/get_highest_money_player

data modify entity @s[team=Red] angry_at set from entity @a[limit=1,tag=highestmoneyblue,team=Blue] UUID

data modify entity @s[team=Blue] angry_at set from entity @a[limit=1,tag=highestmoneyred,team=Red] UUID

scoreboard players reset @s securityTimer