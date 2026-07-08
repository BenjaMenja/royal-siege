execute if score @s counterDmg matches 50..80 run tag @s add counterlevel1

execute if score @s counterDmg matches 80..120 run tag @s add counterlevel2

execute if score @s counterDmg matches 120.. run tag @s add counterlevel3

execute if score @s counterDmg matches 50.. run function commands:attributes/adds/add_counter_atkdmg

tellraw @s[scores={counterDmg=50..80}] {"text":"Counter has ended! You received +2 attack damage.","color":"aqua"}

tellraw @s[scores={counterDmg=80..120}] {"text":"Counter has ended! You received +4 attack damage.","color":"aqua"}

tellraw @s[scores={counterDmg=120..}] {"text":"Counter has ended! You received +6 attack damage.","color":"aqua"}

tag @s remove countering

scoreboard players reset @s counterDmg

scoreboard players reset @s counterTimer