
#Other end of game stuff

tag @s add End

setblock 9 53 -99 air

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

#Fireworks

execute as @a[tag=End] at @s run setblock -1364 66 1194 redstone_block

execute as @a[tag=End] at @s run setblock -1382 66 1194 redstone_block

execute as @a[tag=End] at @s run setblock -1382 66 1212 redstone_block

execute as @a[tag=End] at @s run setblock -1364 66 1212 redstone_block

execute as @a[tag=End] at @s run setblock -1364 66 1194 air

execute as @a[tag=End] at @s run setblock -1382 66 1212 air

execute as @a[tag=End] at @s run setblock -1364 66 1212 air

execute as @a[tag=End] at @s run setblock -1382 66 1194 air

function commands:ultimates/closing_time_fill_end_red

function commands:ultimates/closing_time_fill_end_blue

function commands:other/lava_trap_floor_red

function commands:other/lava_trap_floor_blue

execute as @a[tag=End] at @s run clear @a

execute as @a[tag=End] at @s run kill @e[type=skeleton]

execute as @a[tag=End] at @s run kill @e[type=villager]

execute as @a[tag=End] at @s run kill @e[type=horse]

execute as @a[tag=End] at @s run kill @e[type=fireball]

execute as @a[tag=End] at @s run fill -1383 65 1203 -1384 65 1203 air

execute as @a[tag=End] at @s run setblock -1383 65 1203 command_block[facing=west]{Command:"/tellraw @p {\"text\":\"You must choose the number of players before playing!\",\"color\":\"red\",\"bold\":\"true\"}"} replace

execute as @a[tag=End] at @s run setblock -1384 65 1203 chain_command_block[facing=west]{Command:"/tag @a remove randomized",auto:1b} replace

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

setblock -1367 65 1211 minecraft:oak_wall_sign[facing=north,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function commands:starting/4_player"},"text":"[4 Player]"}',Text3:'{"text":""}',Text4:'{"text":""}'}

setblock -1371 65 1211 minecraft:oak_wall_sign[facing=north,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function commands:starting/6_player"},"text":"[6 Player]"}',Text3:'{"text":""}',Text4:'{"text":""}'}

setblock -1375 65 1211 minecraft:oak_wall_sign[facing=north,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function commands:starting/8_player"},"text":"[8 Player]"}',Text3:'{"text":""}',Text4:'{"text":""}'}

setblock -1379 65 1211 minecraft:oak_wall_sign[facing=north,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function commands:starting/10_player"},"text":"[10 Player]"}',Text3:'{"text":""}',Text4:'{"text":""}'}

execute if entity @a[tag=End] as @a run spawnpoint @a -1373 64 1203

kill @e[type=sheep]

gamemode adventure @a

tag @a remove randomized

execute as @a[tag=End] at @s run execute as @a at @s run teleport @s -1373 65 1203

scoreboard players set #red corruptBank 0

scoreboard players set #blue corruptBank 0

function commands:other/remove_bossbar_display

time set 5000

tag @a[tag=End] remove End