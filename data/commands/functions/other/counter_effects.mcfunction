execute if score @s counterDmg matches 50..80 run effect give @s strength 5 0 true

execute if score @s counterDmg matches 80..120 run effect give @s strength 5 1 true

execute if score @s counterDmg matches 120.. run effect give @s strength 5 2 true

tellraw @s[scores={counterDmg=50..80}] {"text":"Counter has ended! You received Strength I.","color":"aqua"}

tellraw @s[scores={counterDmg=80..120}] {"text":"Counter has ended! You received Strength II.","color":"aqua"}

tellraw @s[scores={counterDmg=120..}] {"text":"Counter has ended! You received Strength III.","color":"aqua"}

tag @s remove countering

scoreboard players reset @s counterDmg

scoreboard players reset @s counterTimer