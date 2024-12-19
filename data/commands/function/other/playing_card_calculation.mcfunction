#Give values to cards

execute store result score #rng RNG run random value 1..13
scoreboard players operation @s cardValue = #rng RNG
execute at @s[tag=card6,tag=redProj] if entity @a[tag=cardShooter,tag=sleightofhand,team=Red] run scoreboard players set @s cardValue 13
execute at @s[tag=card7,tag=redProj] if entity @a[tag=cardShooter,tag=sleightofhand,team=Red] run scoreboard players set @s cardValue 13
execute at @s[tag=card6,tag=blueProj] if entity @a[tag=cardShooter,tag=sleightofhand,team=Blue] run scoreboard players set @s cardValue 13
execute at @s[tag=card7,tag=blueProj] if entity @a[tag=cardShooter,tag=sleightofhand,team=Blue] run scoreboard players set @s cardValue 13

execute store result score #rng RNG run random value 1..4
scoreboard players operation @s cardSuite = #rng RNG
scoreboard players reset #rng RNG

#Average Card Value

scoreboard players add #cardsChecked cardTemp 1

scoreboard players operation #cardTemp cardValue += @s[tag=!pCardExtra] cardValue

execute if score #cardsChecked cardTemp matches 7 run scoreboard players operation #cardTemp cardValue /= #5 constant

execute if score #cardsChecked cardTemp matches 7 run scoreboard players operation @s cardDamage = #cardTemp cardValue

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardTemp cardValue 0

execute if score @s cardSuite matches 1 run data merge entity @s {CustomName:'{"text":"♥"}'}

execute if score @s cardSuite matches 2 run data merge entity @s {CustomName:'{"text":"♦"}'}

execute if score @s cardSuite matches 3 run data merge entity @s {CustomName:'{"text":"♣"}'}

execute if score @s cardSuite matches 4 run data merge entity @s {CustomName:'{"text":"♠"}'}

execute if score #cardsChecked cardTemp matches 7 run tellraw @a[tag=cardShooter] [{"text":"Hand: ","color":"aqua"},{"score":{"name":"@e[type=item,tag=pCard,tag=card1,tag=!stop,limit=1]","objective":"cardValue"},"color":"green"},{"selector":"@e[type=item,tag=pCard,tag=card1,tag=!stop]"},{"text":" "},{"score":{"name":"@e[type=item,tag=pCard,tag=card2,tag=!stop,limit=1]","objective":"cardValue"},"color":"green"},{"selector":"@e[type=item,tag=pCard,tag=card2,tag=!stop]"},{"text":" "},{"score":{"name":"@e[type=item,tag=pCard,tag=card3,tag=!stop,limit=1]","objective":"cardValue"},"color":"green"},{"selector":"@e[type=item,tag=pCard,tag=card3,tag=!stop]"},{"text":" "},{"score":{"name":"@e[type=item,tag=pCard,tag=card4,tag=!stop,limit=1]","objective":"cardValue"},"color":"green"},{"selector":"@e[type=item,tag=pCard,tag=card4,tag=!stop]"},{"text":" "},{"score":{"name":"@e[type=item,tag=pCard,tag=card5,tag=!stop,limit=1]","objective":"cardValue"},"color":"green"},{"selector":"@e[type=item,tag=pCard,tag=card5,tag=!stop]"},{"text":" | "},{"score":{"name":"@e[type=item,tag=pCard,tag=card6,tag=!stop,limit=1]","objective":"cardValue"},"color":"green"},{"selector":"@e[type=item,tag=pCard,tag=card6,tag=!stop]"},{"text":" "},{"score":{"name":"@e[type=item,tag=pCard,tag=card7,tag=!stop,limit=1]","objective":"cardValue"},"color":"green"},{"selector":"@e[type=item,tag=pCard,tag=card7,tag=!stop]"}]

#Get Lowest Card Value

execute if score #cardsChecked cardTemp matches 7 unless entity @e[tag=lowestCardValue] run scoreboard players set #lowestCard cardValue 100

execute if score #cardsChecked cardTemp matches 7 unless entity @e[tag=lowestCardValue] run function commands:playing_cards/lowest_card_value

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardTemp cardValue 0

#Royal Flush

execute if entity @s[scores={cardValue=1,cardSuite=1}] run scoreboard players add #royalFlush1 cardTemp 1

execute if entity @s[scores={cardValue=10,cardSuite=1}] run scoreboard players add #royalFlush1 cardTemp 1

execute if entity @s[scores={cardValue=11,cardSuite=1}] run scoreboard players add #royalFlush1 cardTemp 1

execute if entity @s[scores={cardValue=12,cardSuite=1}] run scoreboard players add #royalFlush1 cardTemp 1

execute if entity @s[scores={cardValue=13,cardSuite=1}] run scoreboard players add #royalFlush1 cardTemp 1

execute if entity @s[scores={cardValue=1,cardSuite=2}] run scoreboard players add #royalFlush2 cardTemp 1

execute if entity @s[scores={cardValue=10,cardSuite=2}] run scoreboard players add #royalFlush2 cardTemp 1

execute if entity @s[scores={cardValue=11,cardSuite=2}] run scoreboard players add #royalFlush2 cardTemp 1

execute if entity @s[scores={cardValue=12,cardSuite=2}] run scoreboard players add #royalFlush2 cardTemp 1

execute if entity @s[scores={cardValue=13,cardSuite=2}] run scoreboard players add #royalFlush2 cardTemp 1

execute if entity @s[scores={cardValue=1,cardSuite=3}] run scoreboard players add #royalFlush3 cardTemp 1

execute if entity @s[scores={cardValue=10,cardSuite=3}] run scoreboard players add #royalFlush3 cardTemp 1

execute if entity @s[scores={cardValue=11,cardSuite=3}] run scoreboard players add #royalFlush3 cardTemp 1

execute if entity @s[scores={cardValue=12,cardSuite=3}] run scoreboard players add #royalFlush3 cardTemp 1

execute if entity @s[scores={cardValue=13,cardSuite=3}] run scoreboard players add #royalFlush3 cardTemp 1

execute if entity @s[scores={cardValue=1,cardSuite=4}] run scoreboard players add #royalFlush4 cardTemp 1

execute if entity @s[scores={cardValue=10,cardSuite=4}] run scoreboard players add #royalFlush4 cardTemp 1

execute if entity @s[scores={cardValue=11,cardSuite=4}] run scoreboard players add #royalFlush4 cardTemp 1

execute if entity @s[scores={cardValue=12,cardSuite=4}] run scoreboard players add #royalFlush4 cardTemp 1

execute if entity @s[scores={cardValue=13,cardSuite=4}] run scoreboard players add #royalFlush4 cardTemp 1

execute if score #royalFlush1 cardTemp matches 5 if score #cardsChecked cardTemp matches 7 run function commands:playing_cards/royal_flush

execute if score #royalFlush2 cardTemp matches 5 if score #cardsChecked cardTemp matches 7 run function commands:playing_cards/royal_flush

execute if score #royalFlush3 cardTemp matches 5 if score #cardsChecked cardTemp matches 7 run function commands:playing_cards/royal_flush

execute if score #royalFlush4 cardTemp matches 5 if score #cardsChecked cardTemp matches 7 run function commands:playing_cards/royal_flush

#Straight Flush, Straight, and Flush

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardTemp cardValue 1

execute if score #cardsChecked cardTemp matches 7 run tag @e[type=item,tag=pCard,tag=!stop,limit=1] add flushcalc

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardExists cardTemp 0

execute if score #cardsChecked cardTemp matches 7 if entity @e[type=item,tag=pCard,tag=!stop,tag=handMade] run scoreboard players set #cardExists cardTemp 1

execute if score #cardsChecked cardTemp matches 7 if score #cardExists cardTemp matches 1 run scoreboard players add #cardStraight cardValue 1

execute if score #cardsChecked cardTemp matches 7 if score #cardExists cardTemp matches 0 run scoreboard players set #cardStraight cardValue 0

execute if score #cardsChecked cardTemp matches 7 unless entity @s[tag=handMade] as @e[type=item,tag=flushcalc] run function commands:playing_cards/straight_and_flush_calc

execute if score #cardExists cardTemp matches 1 if score #cardsChecked cardTemp matches 7 unless entity @s[tag=handMade] if score #hasFlush cardTemp matches 1.. run function commands:playing_cards/flush_set_values

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardTemp cardTemp 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardFlush cardSuite 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardStraight cardValue 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #hasFlush cardTemp 0

#4 and 3 of a kind, pair, two pair, and full house

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardTemp cardValue 1

execute if score #cardsChecked cardTemp matches 7 run tag @e[type=item,tag=pCard,tag=!stop,limit=1] add paircalc

execute if score #cardsChecked cardTemp matches 7 unless entity @s[tag=handMade] as @e[type=item,tag=paircalc] run function commands:playing_cards/pair_calcs

execute if score #cardsChecked cardTemp matches 7 unless entity @s[tag=handMade] if score #threeCards cardValue matches 1 if score #twoCards cardValue matches 1.. run function commands:playing_cards/full_house_set_values

execute if score #cardsChecked cardTemp matches 7 unless entity @s[tag=handMade] if score #threeCards cardValue matches 1 unless score #twoCards cardValue matches 1.. run function commands:playing_cards/3_of_a_kind_set_values

execute if score #cardsChecked cardTemp matches 7 unless entity @s[tag=handMade] if score #twoCards cardValue matches 2.. run function commands:playing_cards/two_pair_set_values

execute if score #cardsChecked cardTemp matches 7 unless entity @s[tag=handMade] if score #twoCards cardValue matches 1 run function commands:playing_cards/pair_set_values

#Reset

execute if score #cardsChecked cardTemp matches 7 if score #straightFlush cardTemp matches 1.. run scoreboard players operation @s cardDamage = #cardTemp cardDamage

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #twoCards cardValue 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #threeCards cardValue 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #3CardValue cardValue 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #2CardValue cardValue 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #royalFlush1 cardTemp 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #royalFlush2 cardTemp 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #royalFlush3 cardTemp 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #royalFlush4 cardTemp 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #rolledFlush cardTemp 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardTemp cardDamage 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #cardStraight cardValue 0

execute if score #cardsChecked cardTemp matches 7 run scoreboard players set #straightFlush cardTemp 0

