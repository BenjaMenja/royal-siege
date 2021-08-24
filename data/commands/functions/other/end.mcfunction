#Adding Stuff to Class Info

execute if score #gamemode settings matches 0 run function commands:admin/add_to_class_info

#Other end of game stuff

execute as @p[tag=End] at @s run title @a subtitle ["",{"text":" "}]

scoreboard players set @e[tag=Chest] TreasureDelete 300

tag @a remove watched

tag @a remove watchRed

tag @a remove watchBlue

scoreboard players reset #redroyalguard royalguardCD

scoreboard players reset #blueroyalguard royalguardCD

kill @e[type=item]

execute as @a[tag=End] at @s run kill @e[type=wither_skeleton]

execute as @p[tag=End] at @s run team leave @a

tag @a remove spectator

tag @a remove wipeKill

execute as @p[tag=End] at @s run scoreboard players set @e[tag=Treeoflife] Treeremove 201

execute as @p[tag=End] at @s run scoreboard players set @e[tag=TreeoflifeBlue] Treeremove 201

execute as @a[tag=End] run kill @e[type=elder_guardian]

execute as @a[tag=End] at @s run execute as @a at @s run teleport @s -1215 54 1260

execute positioned -1215 54 1260 run playsound royalsiege:songs.lose master @a[tag=!End] ~ ~ ~ 100

execute positioned -1215 54 1260 run playsound royalsiege:songs.win master @a[tag=End] ~ ~ ~ 100

setblock -1208 60 1259 minecraft:lectern[facing=west,has_book=true,powered=false]{Book:{Count:1b,id:"minecraft:written_book",tag:{author:"",pages:['{"text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quam nulla porttitor massa id neque aliquam vestibulum."}','{"text":"Porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Sit amet consectetur adipiscing elit ut. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus."}','{"text":"Urna molestie at elementum eu facilisis. In vitae turpis massa sed elementum tempus egestas sed. Sem nulla pharetra diam sit. Turpis massa sed elementum tempus egestas sed sed."}','{"text":" Sodales ut eu sem integer vitae justo eget. Purus viverra accumsan in nisl nisi scelerisque eu ultrices vitae. Amet mattis vulputate enim nulla aliquet. Nibh tellus molestie nunc non. "}','{"text":"Risus in hendrerit gravida rutrum quisque non tellus orci. Adipiscing commodo elit at imperdiet dui accumsan sit. At in tellus integer feugiat scelerisque varius. Augue ut lectus arcu bibendum at varius vel."}','{"text":"Vitae congue mauris rhoncus aenean vel elit scelerisque. Leo integer malesuada nunc vel risus. Odio facilisis mauris sit amet. Cras ornare arcu dui vivamus arcu felis."}','{"text":"Volutpat maecenas volutpat blandit aliquam etiam. Mauris commodo quis imperdiet massa tincidunt. Commodo ullamcorper a lacus vestibulum. Nunc eget lorem dolor sed."}','{"text":"Vitae aliquet nec ullamcorper sit amet risus. Pharetra vel turpis nunc eget lorem dolor. Est pellentesque elit ullamcorper dignissim. Sed elementum tempus egestas sed sed."}','{"text":"Pulvinar sapien et ligula ullamcorper malesuada proin. Enim sit amet venenatis urna. Quis ipsum suspendisse ultrices gravida. Tincidunt id aliquet risus feugiat in ante metus dictum."}','{"text":"Sit amet consectetur adipiscing elit pellentesque. Lorem ipsum dolor sit amet consectetur. A cras semper auctor neque. Sed vulputate mi sit amet."}','{"text":"Vel quam elementum pulvinar etiam non. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Eu ultrices vitae auctor eu augue ut lectus arcu."}','{"text":"Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Ultrices vitae auctor eu augue ut lectus arcu bibendum. Neque sodales ut etiam sit amet nisl."}','{"text":"Ut lectus arcu bibendum at varius vel pharetra vel. Morbi non arcu risus quis varius. Egestas sed tempus urna et. Viverra adipiscing at in tellus."}','{"text":"Blandit aliquam etiam erat velit. Quam id leo in vitae turpis massa sed elementum tempus. Ipsum suspendisse ultrices gravida dictum fusce ut."}','{"text":"At erat pellentesque adipiscing commodo. Sed faucibus turpis in eu mi bibendum neque. Enim blandit volutpat maecenas volutpat blandit aliquam etiam."}','{"text":"Vulputate dignissim suspendisse in est ante. Aliquet risus feugiat in ante."}','{"text":"Malesuada proin libero nunc consequat. Blandit cursus risus at ultrices. Viverra orci sagittis eu volutpat odio facilisis mauris sit. Ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae. Malesuada fames ac turpis egestas integer."}','{"text":"Morbi tristique senectus et netus et. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin libero."}','{"text":"Mauris a diam maecenas sed enim ut. Hac habitasse platea dictumst quisque sagittis purus sit amet. Donec massa sapien faucibus et molestie ac feugiat sed lectus. "}','{"text":"Erat pellentesque adipiscing commodo elit at imperdiet dui accumsan sit. Fames ac turpis egestas sed tempus urna. Enim sit amet venenatis urna cursus."}'],resolved:1b,title:"The Sacred Text"}},Page:0}

#Fireworks

execute as @a[tag=End] at @s run setblock -1364 66 1194 redstone_block

execute as @a[tag=End] at @s run setblock -1382 66 1194 redstone_block

execute as @a[tag=End] at @s run setblock -1382 66 1212 redstone_block

execute as @a[tag=End] at @s run setblock -1364 66 1212 redstone_block

execute as @a[tag=End] at @s run setblock -1364 66 1194 air

execute as @a[tag=End] at @s run setblock -1382 66 1212 air

execute as @a[tag=End] at @s run setblock -1364 66 1212 air

execute as @a[tag=End] at @s run setblock -1382 66 1194 air

#Others

function commands:ultimates/closing_time_fill_end_red

function commands:ultimates/closing_time_fill_end_blue

function commands:other/lava_trap_floor_red

function commands:other/lava_trap_floor_blue

execute as @a[tag=End] at @s run clear @a

execute as @a[tag=End] at @s run kill @e[type=skeleton]

execute as @a[tag=End] at @s run kill @e[type=villager]

execute as @a[tag=End] at @s run kill @e[type=horse]

execute as @a[tag=End] at @s run kill @e[type=fireball]

execute as @a[tag=End] at @s run scoreboard players reset @a

execute as @a[tag=End] at @s run bossbar set minecraft:blueking visible false

execute as @a[tag=End] at @s run bossbar set minecraft:redking visible false

execute as @a[tag=End] at @s run tag @a remove upgraded

execute as @a[tag=End] run effect clear @a

execute as @a[tag=End] run scoreboard players set @a Kit 0

execute as @a[tag=End] at @s run scoreboard players set @a Ultimate 0

scoreboard players set @a ultCheck 0

tag @a remove protected

tag @a remove marked

tag @a remove absShield

tag @a remove justiceKill

execute if entity @a[tag=End] run scoreboard objectives setdisplay sidebar

execute if entity @a[tag=End] run scoreboard players set #displayDeaths totalDeaths 0

execute if entity @a[tag=End] as @a run spawnpoint @a -1215 54 1260

kill @e[type=sheep]

kill @e[type=zombified_piglin]

gamemode adventure @a

tag @a remove randomized

tag @a remove noWarp

scoreboard players set #red corruptBank 0

scoreboard players set #blue corruptBank 0

scoreboard players set #gameDuration gameDuration 0

advancement grant @a[tag=End,advancements={commands:advancements/consecutive_wins={win4=true}}] only commands:advancements/consecutive_wins win5

advancement grant @a[tag=End,advancements={commands:advancements/consecutive_wins={win3=true}}] only commands:advancements/consecutive_wins win4

advancement grant @a[tag=End,advancements={commands:advancements/consecutive_wins={win2=true}}] only commands:advancements/consecutive_wins win3

advancement grant @a[tag=End,advancements={commands:advancements/consecutive_wins={win1=true}}] only commands:advancements/consecutive_wins win2

advancement grant @a[tag=End] only commands:advancements/consecutive_wins win1

advancement revoke @a[advancements={commands:character_challenges/soup_of_the_week=false}] only commands:character_challenges/soup_of_the_week

function commands:other/remove_bossbar_display

time set 5000

tag @a[tag=End] remove End