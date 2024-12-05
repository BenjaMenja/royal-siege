
#Dungeon Villagers

function commands:starting/spawn_dungeon_villagers

#Rest of the Start of the Map

teleport @e[type=skeleton] ~ -200 ~

teleport @e[type=zombie] ~ -200 ~

teleport @e[type=item] ~ -200 ~

teleport @e[type=horse] ~ -200 ~

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 positioned 9 59 -216 run function commands:entities/king_red

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 positioned 9 59 -48 run function commands:entities/king_blue

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 positioned 156 59 -1017 run function commands:entities/king_red

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 positioned 45 59 -1128 run function commands:entities/king_blue

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 positioned 19 55 -1908 run function commands:entities/king_red

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 positioned 19 55 -2034 run function commands:entities/king_blue

scoreboard players set #redroyalguard royalguardCD 2399

scoreboard players set #blueroyalguard royalguardCD 2399

execute as @p[scores={Start=1..}] run bossbar set minecraft:redking max 1024

execute as @p[scores={Start=1..}] run bossbar set minecraft:blueking max 1024

kill @e[type=area_effect_cloud]

execute if score #gamemode settings matches 0 run bossbar set minecraft:redking players @a

execute if score #gamemode settings matches 0 run bossbar set minecraft:blueking players @a

execute if score #gamemode settings matches 0 run bossbar set minecraft:redking visible true

execute if score #gamemode settings matches 0 run bossbar set minecraft:blueking visible true

scoreboard players set @a[scores={Start=1..}] secret 0

scoreboard players set @a[scores={Start=1..}] Ultimate 0

scoreboard players set @a[scores={Kit=1}] exCharge 0

scoreboard players set @a[scores={Kit=4}] healstreak 0

scoreboard players set @a[scores={Kit=3}] absShieldCount 0

advancement revoke @a only commands:pickup_fake_money

execute as @a[team=Red] run scoreboard players add #numPlayersOnTeam multiItems 1

execute if score #gamemode settings matches 1 run scoreboard players set #bluekills tdmKills 0

execute if score #gamemode settings matches 1 run scoreboard players set #redkills tdmKills 0

execute if score @s players matches 4 if score #gamemode settings matches 1 run scoreboard players set #tdmreqkills tdmKills 15

execute if score @s players matches 6 if score #gamemode settings matches 1 run scoreboard players set #tdmreqkills tdmKills 20

execute if score @s players matches 8 if score #gamemode settings matches 1 run scoreboard players set #tdmreqkills tdmKills 25

execute if score @s players matches 10 if score #gamemode settings matches 1 run scoreboard players set #tdmreqkills tdmKills 30

execute as @a store result score @s UUID run data get entity @s UUID[0]

# execute as @a at @s run function commands:starting/spawn_health_displays

scoreboard players set #redHS healstreak 0

scoreboard players set #blueHS healstreak 0

scoreboard players set #redHS HSValue 100

scoreboard players set #blueHS HSValue 100

scoreboard players set #red siegeBank 0

scoreboard players set #blue siegeBank 0

scoreboard players add @a[scores={Kit=16}] icePackPassive 0

scoreboard objectives setdisplay sidebar Money

scoreboard players reset @a[team=spectator] Money

execute if score #underground settings matches 1 if score #classicMap settings matches 0 run fill 4 52 -103 2 52 -105 minecraft:mossy_cobblestone replace air

execute if score #underground settings matches 1 if score #classicMap settings matches 0 run fill 13 52 -105 15 52 -103 mossy_cobblestone replace air

execute if score #underground settings matches 1 if score #classicMap settings matches 0 run fill 14 52 -162 16 52 -160 minecraft:mossy_cobblestone replace air

execute if score #underground settings matches 1 if score #classicMap settings matches 0 run fill 3 52 -162 5 52 -160 mossy_cobblestone replace air

execute if score #underground settings matches 0 if score #classicMap settings matches 0 run fill 4 52 -103 2 52 -105 air

execute if score #underground settings matches 0 if score #classicMap settings matches 0 run fill 13 52 -105 15 52 -103 air

execute if score #underground settings matches 0 if score #classicMap settings matches 0 run fill 14 52 -162 16 52 -160 air

execute if score #underground settings matches 0 if score #classicMap settings matches 0 run fill 3 52 -162 5 52 -160 air

execute if score #underground settings matches 1 if score #classicMap settings matches 1 run fill 72 54 -998 72 53 -997 packed_ice

execute if score #underground settings matches 1 if score #classicMap settings matches 1 run fill 86 51 -1034 87 49 -1034 packed_ice

execute if score #underground settings matches 1 if score #classicMap settings matches 1 run fill 64 52 -1063 65 52 -1061 snow_block

execute if score #underground settings matches 1 if score #classicMap settings matches 1 run fill 25 54 -1046 26 53 -1046 packed_ice

execute if score #underground settings matches 0 if score #classicMap settings matches 1 run fill 72 54 -998 72 53 -997 air

execute if score #underground settings matches 0 if score #classicMap settings matches 1 run fill 86 51 -1034 87 49 -1034 air

execute if score #underground settings matches 0 if score #classicMap settings matches 1 run fill 64 52 -1063 65 52 -1061 air

execute if score #underground settings matches 0 if score #classicMap settings matches 1 run fill 25 54 -1046 26 53 -1046 air

execute if score #timeofday settings matches 0 run time set 5000

execute if score #timeofday settings matches 1 run time set 18000

tag @a[team=spectator] add spectator

team leave @a[team=spectator]

tag @a remove teamSwitch

tag @a remove blessed

tag @a remove resurrecting

tag @s remove gamblerMoneyStolen

tag @s remove vaccinated

kill @e[type=marker,tag=resSoul]

tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

execute if score #gamemode settings matches 0 run scoreboard players set @e[tag=King] kingActive -2

#Ultimates & Bossbars

execute as @a run scoreboard players operation @s Ultimate = @s ultCheck

scoreboard players set @a ultsUsed 0

bossbar set commands:blue_ult1 players @a[scores={Ultimate=1},team=Blue]

bossbar set commands:blue_ult2 players @a[scores={Ultimate=2},team=Blue]

bossbar set commands:blue_ult3 players @a[scores={Ultimate=3},team=Blue]

bossbar set commands:blue_ult4 players @a[scores={Ultimate=4},team=Blue]

bossbar set commands:blue_ult5 players @a[scores={Ultimate=5},team=Blue]

bossbar set commands:blue_ult6 players @a[scores={Ultimate=6},team=Blue]

bossbar set commands:blue_ult7 players @a[scores={Ultimate=7},team=Blue]

bossbar set commands:blue_ult8 players @a[scores={Ultimate=8},team=Blue]

bossbar set commands:blue_ult9 players @a[scores={Ultimate=9},team=Blue]

bossbar set commands:blue_ult10 players @a[scores={Ultimate=10},team=Blue]

bossbar set commands:blue_ult11 players @a[scores={Ultimate=11},team=Blue]

bossbar set commands:blue_ult12 players @a[scores={Ultimate=12},team=Blue]

bossbar set commands:blue_ult13 players @a[scores={Ultimate=13},team=Blue]

bossbar set commands:blue_ult14 players @a[scores={Ultimate=14},team=Blue]

bossbar set commands:blue_ult15 players @a[scores={Ultimate=15},team=Blue]

bossbar set commands:blue_ult16 players @a[scores={Ultimate=16},team=Blue]

bossbar set commands:blue_ult17 players @a[scores={Ultimate=17},team=Blue]

bossbar set commands:blue_ult18 players @a[scores={Ultimate=18},team=Blue]

bossbar set commands:blue_ult19 players @a[scores={Ultimate=19},team=Blue]

bossbar set commands:blue_ult20 players @a[scores={Ultimate=20},team=Blue]

bossbar set commands:blue_ult21 players @a[scores={Ultimate=21},team=Blue]

bossbar set commands:blue_ult22 players @a[scores={Ultimate=22},team=Blue]

bossbar set commands:blue_ult23 players @a[scores={Ultimate=23},team=Blue]

bossbar set commands:blue_ult24 players @a[scores={Ultimate=24},team=Blue]

bossbar set commands:blue_ult25 players @a[scores={Ultimate=25},team=Blue]

bossbar set commands:blue_ult26 players @a[scores={Ultimate=26},team=Blue]

bossbar set commands:blue_ult27 players @a[scores={Ultimate=27},team=Blue]

bossbar set commands:blue_ult28 players @a[scores={Ultimate=28},team=Blue]

bossbar set commands:blue_ult29 players @a[scores={Ultimate=29},team=Blue]

bossbar set commands:blue_ult30 players @a[scores={Ultimate=30},team=Blue]

bossbar set commands:blue_ult31 players @a[scores={Ultimate=31},team=Blue]

bossbar set commands:blue_ult32 players @a[scores={Ultimate=32},team=Blue]

bossbar set commands:red_ult1 players @a[scores={Ultimate=1},team=Red]

bossbar set commands:red_ult2 players @a[scores={Ultimate=2},team=Red]

bossbar set commands:red_ult3 players @a[scores={Ultimate=3},team=Red]

bossbar set commands:red_ult4 players @a[scores={Ultimate=4},team=Red]

bossbar set commands:red_ult5 players @a[scores={Ultimate=5},team=Red]

bossbar set commands:red_ult6 players @a[scores={Ultimate=6},team=Red]

bossbar set commands:red_ult7 players @a[scores={Ultimate=7},team=Red]

bossbar set commands:red_ult8 players @a[scores={Ultimate=8},team=Red]

bossbar set commands:red_ult9 players @a[scores={Ultimate=9},team=Red]

bossbar set commands:red_ult10 players @a[scores={Ultimate=10},team=Red]

bossbar set commands:red_ult11 players @a[scores={Ultimate=11},team=Red]

bossbar set commands:red_ult12 players @a[scores={Ultimate=12},team=Red]

bossbar set commands:red_ult13 players @a[scores={Ultimate=13},team=Red]

bossbar set commands:red_ult14 players @a[scores={Ultimate=14},team=Red]

bossbar set commands:red_ult15 players @a[scores={Ultimate=15},team=Red]

bossbar set commands:red_ult16 players @a[scores={Ultimate=16},team=Red]

bossbar set commands:red_ult17 players @a[scores={Ultimate=17},team=Red]

bossbar set commands:red_ult18 players @a[scores={Ultimate=18},team=Red]

bossbar set commands:red_ult19 players @a[scores={Ultimate=19},team=Red]

bossbar set commands:red_ult20 players @a[scores={Ultimate=20},team=Red]

bossbar set commands:red_ult21 players @a[scores={Ultimate=21},team=Red]

bossbar set commands:red_ult22 players @a[scores={Ultimate=22},team=Red]

bossbar set commands:red_ult23 players @a[scores={Ultimate=23},team=Red]

bossbar set commands:red_ult24 players @a[scores={Ultimate=24},team=Red]

bossbar set commands:red_ult25 players @a[scores={Ultimate=25},team=Red]

bossbar set commands:red_ult26 players @a[scores={Ultimate=26},team=Red]

bossbar set commands:red_ult27 players @a[scores={Ultimate=27},team=Red]

bossbar set commands:red_ult28 players @a[scores={Ultimate=28},team=Red]

bossbar set commands:red_ult29 players @a[scores={Ultimate=29},team=Red]

bossbar set commands:red_ult30 players @a[scores={Ultimate=30},team=Red]

bossbar set commands:red_ult31 players @a[scores={Ultimate=31},team=Red]

bossbar set commands:red_ult32 players @a[scores={Ultimate=32},team=Red]

#Advancement Grants for ultimates

advancement grant @a[scores={Ultimate=1}] only commands:challenges/ultimate_extraordinaire ultimate1

advancement grant @a[scores={Ultimate=2}] only commands:challenges/ultimate_extraordinaire ultimate2

advancement grant @a[scores={Ultimate=3}] only commands:challenges/ultimate_extraordinaire ultimate3

advancement grant @a[scores={Ultimate=4}] only commands:challenges/ultimate_extraordinaire ultimate4

advancement grant @a[scores={Ultimate=5}] only commands:challenges/ultimate_extraordinaire ultimate5

advancement grant @a[scores={Ultimate=6}] only commands:challenges/ultimate_extraordinaire ultimate6

advancement grant @a[scores={Ultimate=7}] only commands:challenges/ultimate_extraordinaire ultimate7

advancement grant @a[scores={Ultimate=8}] only commands:challenges/ultimate_extraordinaire ultimate8

advancement grant @a[scores={Ultimate=9}] only commands:challenges/ultimate_extraordinaire ultimate9

advancement grant @a[scores={Ultimate=10}] only commands:challenges/ultimate_extraordinaire ultimate10

advancement grant @a[scores={Ultimate=11}] only commands:challenges/ultimate_extraordinaire ultimate11

advancement grant @a[scores={Ultimate=12}] only commands:challenges/ultimate_extraordinaire ultimate12

advancement grant @a[scores={Ultimate=13}] only commands:challenges/ultimate_extraordinaire ultimate13

advancement grant @a[scores={Ultimate=14}] only commands:challenges/ultimate_extraordinaire ultimate14

advancement grant @a[scores={Ultimate=15}] only commands:challenges/ultimate_extraordinaire ultimate15

advancement grant @a[scores={Ultimate=16}] only commands:challenges/ultimate_extraordinaire ultimate16

advancement grant @a[scores={Ultimate=17}] only commands:challenges/ultimate_extraordinaire ultimate17

advancement grant @a[scores={Ultimate=18}] only commands:challenges/ultimate_extraordinaire ultimate18

advancement grant @a[scores={Ultimate=19}] only commands:challenges/ultimate_extraordinaire ultimate19

advancement grant @a[scores={Ultimate=20}] only commands:challenges/ultimate_extraordinaire ultimate20

advancement grant @a[scores={Ultimate=21}] only commands:challenges/ultimate_extraordinaire ultimate21

advancement grant @a[scores={Ultimate=22}] only commands:challenges/ultimate_extraordinaire ultimate22

advancement grant @a[scores={Ultimate=23}] only commands:challenges/ultimate_extraordinaire ultimate23

advancement grant @a[scores={Ultimate=24}] only commands:challenges/ultimate_extraordinaire ultimate24

advancement grant @a[scores={Ultimate=25}] only commands:challenges/ultimate_extraordinaire ultimate25

advancement grant @a[scores={Ultimate=26}] only commands:challenges/ultimate_extraordinaire ultimate26

#End of Start

scoreboard players set @a players 0

scoreboard players set @a[scores={Start=1..}] Start 0

