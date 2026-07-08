execute as @a run function commands:gameplay_events/ending/reset_scores

#Other end of game stuff

title @a subtitle ["",{"text":" "}]

scoreboard players set @e[tag=Chest] TreasureDelete 300

scoreboard players reset #redroyalguard royalguardCD

scoreboard players reset #blueroyalguard royalguardCD

team leave @a

scoreboard players set @e[tag=Treeoflife] Treeremove 201

scoreboard players set @e[tag=TreeoflifeBlue] Treeremove 201

teleport @a -1215 54 1260

execute positioned -1215 54 1260 run playsound royalsiege:songs.lose master @a[tag=lose] ~ ~ ~ 100

execute positioned -1215 54 1260 run playsound royalsiege:songs.win master @a[tag=win] ~ ~ ~ 100

setblock -1208 60 1259 minecraft:lectern[facing=west,has_book=true,powered=false]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"The Sacred Text",author:"",resolved:true,pages:["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam nulla porttitor massa id neque aliquam vestibulum.","Porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Sit amet consectetur adipiscing elit ut. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus.","Urna molestie at elementum eu facilisis. In vitae turpis massa sed elementum tempus egestas sed. Sem nulla pharetra diam sit. Turpis massa sed elementum tempus egestas sed sed.","Sodales ut eu sem integer vitae justo eget. Purus viverra accumsan in nisl nisi scelerisque eu ultrices vitae. Amet mattis vulputate enim nulla aliquet. Nibh tellus molestie nunc non. ","Risus in hendrerit gravida rutrum quisque non tellus orci. Adipiscing commodo elit at imperdiet dui accumsan sit. At in tellus integer feugiat scelerisque varius. Augue ut lectus arcu bibendum at varius vel.","Vitae congue mauris rhoncus aenean vel elit scelerisque. Leo integer malesuada nunc vel risus. Odio facilisis mauris sit amet. Cras ornare arcu dui vivamus arcu felis.","Volutpat maecenas volutpat blandit aliquam etiam. Mauris commodo quis imperdiet massa tincidunt. Commodo ullamcorper a lacus vestibulum. Nunc eget lorem dolor sed.","Vitae aliquet nec ullamcorper sit amet risus. Pharetra vel turpis nunc eget lorem dolor. Est pellentesque elit ullamcorper dignissim. Sed elementum tempus egestas sed sed.","Pulvinar sapien et ligula ullamcorper malesuada proin. Enim sit amet venenatis urna. Quis ipsum suspendisse ultrices gravida. Tincidunt id aliquet risus feugiat in ante metus dictum.","Sit amet consectetur adipiscing elit pellentesque. Lorem ipsum dolor sit amet consectetur. A cras semper auctor neque. Sed vulputate mi sit amet.","Vel quam elementum pulvinar etiam non. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Eu ultrices vitae auctor eu augue ut lectus arcu.","Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Ultrices vitae auctor eu augue ut lectus arcu bibendum. Neque sodales ut etiam sit amet nisl.","Ut lectus arcu bibendum at varius vel pharetra vel. Morbi non arcu risus quis varius. Egestas sed tempus urna et. Viverra adipiscing at in tellus.","Blandit aliquam etiam erat velit. Quam id leo in vitae turpis massa sed elementum tempus. Ipsum suspendisse ultrices gravida dictum fusce ut.","At erat pellentesque adipiscing commodo. Sed faucibus turpis in eu mi bibendum neque. Enim blandit volutpat maecenas volutpat blandit aliquam etiam.","Vulputate dignissim suspendisse in est ante. Aliquet risus feugiat in ante.","Malesuada proin libero nunc consequat. Blandit cursus risus at ultrices. Viverra orci sagittis eu volutpat odio facilisis mauris sit. Ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae. Malesuada fames ac turpis egestas integer.","Morbi tristique senectus et netus et. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin libero.","Mauris a diam maecenas sed enim ut. Hac habitasse platea dictumst quisque sagittis purus sit amet. Donec massa sapien faucibus et molestie ac feugiat sed lectus. ","Erat pellentesque adipiscing commodo elit at imperdiet dui accumsan sit. Fames ac turpis egestas sed tempus urna. Enim sit amet venenatis urna cursus."]}}},Page:0} replace

#Others

clear @a

kill @e[type=skeleton]

kill @e[type=villager]

kill @e[type=horse]

kill @e[type=fireball]

kill @e[type=sheep]

kill @e[type=zombified_piglin]

kill @e[type=marker,tag=resSoul]

kill @e[type=item]

kill @e[type=wither_skeleton]

kill @e[type=elder_guardian]

execute as @a run bossbar set minecraft:blueking visible false

execute as @a run bossbar set minecraft:redking visible false

scoreboard players reset #corrupt Timer

scoreboard objectives setdisplay sidebar

scoreboard players set #displayDeaths totalDeaths 0

spawnpoint @a -1215 54 1260

gamemode adventure @a

advancement revoke @a only commands:pickup_fake_money

scoreboard players set #matchID matchID 0

scoreboard players set #red corruptBank 0

scoreboard players set #blue corruptBank 0

scoreboard players set #gameDuration gameDuration 0

scoreboard players set #numPlayersOnTeam multiItems 0

execute as @a[scores={Kit=14}] run function commands:attributes/clears/clear_safe_fall_dist

advancement grant @a[tag=win,advancements={commands:challenges/consecutive_wins={win4=true}}] only commands:challenges/consecutive_wins win5

advancement grant @a[tag=win,advancements={commands:challenges/consecutive_wins={win3=true}}] only commands:challenges/consecutive_wins win4

advancement grant @a[tag=win,advancements={commands:challenges/consecutive_wins={win2=true}}] only commands:challenges/consecutive_wins win3

advancement grant @a[tag=win,advancements={commands:challenges/consecutive_wins={win1=true}}] only commands:challenges/consecutive_wins win2

advancement grant @a[tag=win] only commands:challenges/consecutive_wins win1

advancement revoke @a[advancements={commands:character_challenges/soup_of_the_week=false}] only commands:character_challenges/soup_of_the_week

function commands:text/remove_bossbar_display

execute as @a run function commands:attributes/clear_all_attribute_modifiers

function commands:starting/end_score_tag_reset

weather clear 1000000

time set 5000

tag @a remove win

tag @a remove lose