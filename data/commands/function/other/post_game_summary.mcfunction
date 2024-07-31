execute store result score #redking healthVar run bossbar get minecraft:redking value

execute store result score #blueking healthVar run bossbar get minecraft:blueking value

function commands:other/game_duration_time_conversion

execute if score #gamemode settings matches 0 if score #gamesecondstore gameDuration matches ..9 run tellraw @a [{"color":"aqua","text":"Post Round Summary"},{"text":"\n\n"},{"color":"green","text":"Game Duration: "},{"color":"dark_aqua","score":{"name":"#gameminutestore","objective":"gameDuration"}},{"color":"green","text":":"},{"text":"0","color":"dark_aqua"},{"color":"dark_aqua","score":{"name":"#gamesecondstore","objective":"gameDuration"}},{"text":"\n\n"},{"color":"red","text":"Red King Health: "},{"color":"red","score":{"name":"#redking","objective":"healthVar"}},{"text":"\n"},{"color":"blue","text":"Blue King Health: "},{"color":"blue","score":{"name":"#blueking","objective":"healthVar"}},{"text":"\n\n"},{"color":"white","text":"Player"},{"color":"gray","text":" / "},{"color":"white","text":"Class"},{"color":"gray","text":" / "},{"color":"white","text":"Deaths"},{"color":"gray","text":" / "},{"color":"white","text":"Siege Bucks Earned"},{"color":"gray","text":" / "},{"color":"white","text":"Ultimates Used"},{"text":"\n"}]

execute if score #gamemode settings matches 0 if score #gamesecondstore gameDuration matches 10.. run tellraw @a [{"color":"aqua","text":"Post Round Summary"},{"text":"\n\n"},{"color":"green","text":"Game Duration: "},{"color":"dark_aqua","score":{"name":"#gameminutestore","objective":"gameDuration"}},{"color":"green","text":":"},{"color":"dark_aqua","score":{"name":"#gamesecondstore","objective":"gameDuration"}},{"text":"\n\n"},{"color":"red","text":"Red King Health: "},{"color":"red","score":{"name":"#redking","objective":"healthVar"}},{"text":"\n"},{"color":"blue","text":"Blue King Health: "},{"color":"blue","score":{"name":"#blueking","objective":"healthVar"}},{"text":"\n\n"},{"color":"white","text":"Player"},{"color":"gray","text":" / "},{"color":"white","text":"Class"},{"color":"gray","text":" / "},{"color":"white","text":"Deaths"},{"color":"gray","text":" / "},{"color":"white","text":"Siege Bucks Earned"},{"color":"gray","text":" / "},{"color":"white","text":"Ultimates Used"},{"text":"\n"}]

execute if score #gamemode settings matches 1 if score #gamesecondstore gameDuration matches ..9 run tellraw @a [{"color":"aqua","text":"Post Round Summary"},{"text":"\n\n"},{"color":"green","text":"Game Duration: "},{"color":"dark_aqua","score":{"name":"#gameminutestore","objective":"gameDuration"}},{"color":"green","text":":"},{"text":"0","color":"dark_aqua"},{"color":"dark_aqua","score":{"name":"#gamesecondstore","objective":"gameDuration"}},{"text":"\n\n"},{"color":"white","text":"Player"},{"color":"gray","text":" / "},{"color":"white","text":"Class"},{"color":"gray","text":" / "},{"color":"white","text":"Deaths"},{"color":"gray","text":" / "},{"color":"white","text":"Siege Bucks Earned"},{"color":"gray","text":" / "},{"color":"white","text":"Ultimates Used"},{"text":"\n"}]

execute if score #gamemode settings matches 1 if score #gamesecondstore gameDuration matches 10.. run tellraw @a [{"color":"aqua","text":"Post Round Summary"},{"text":"\n\n"},{"color":"green","text":"Game Duration: "},{"color":"dark_aqua","score":{"name":"#gameminutestore","objective":"gameDuration"}},{"color":"green","text":":"},{"color":"dark_aqua","score":{"name":"#gamesecondstore","objective":"gameDuration"}},{"text":"\n\n"},{"color":"white","text":"Player"},{"color":"gray","text":" / "},{"color":"white","text":"Class"},{"color":"gray","text":" / "},{"color":"white","text":"Deaths"},{"color":"gray","text":" / "},{"color":"white","text":"Siege Bucks Earned"},{"color":"gray","text":" / "},{"color":"white","text":"Ultimates Used"},{"text":"\n"}]

execute as @a[team=Red,limit=1,tag=!summarized] run function commands:other/post_game_summary_player_red

execute as @a[team=Blue,limit=1,tag=!summarized] run function commands:other/post_game_summary_player_blue

tag @a remove summarized