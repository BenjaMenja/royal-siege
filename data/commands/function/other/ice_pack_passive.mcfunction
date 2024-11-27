execute if entity @s[team=Red] run loot give @s loot commands:main_abilities/ice_pack_red

execute if entity @s[team=Blue] run loot give @s loot commands:main_abilities/ice_pack_blue

execute if score @s icePackUses matches ..2 run advancement grant @s only commands:character_challenges/no_pack_wasted

scoreboard players remove @s[tag=!upgraded] icePackPassive 8

scoreboard players remove @s[tag=upgraded] icePackPassive 6