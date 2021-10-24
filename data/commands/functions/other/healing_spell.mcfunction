execute at @s[team=Red,tag=!wrenched] run effect give @a[team=Red,distance=..10] regeneration 6 1 true

execute at @s[team=Red,tag=!wrenched] run effect give @a[team=Red,distance=..10] instant_health 1 0 true

execute at @s[team=Red,tag=wrenched] run effect give @a[team=Red,distance=..10] regeneration 8 1 true

execute at @s[team=Red,tag=wrenched] run effect give @a[team=Red,distance=..10] instant_health 1 1 true

execute at @s[team=Red] as @a[team=Red,distance=..10] unless score @s Kit matches 4 run scoreboard players add #redHS healstreak 1

execute at @s[team=Blue,tag=!wrenched] run effect give @a[team=Blue,distance=..10] regeneration 6 1 true

execute at @s[team=Blue,tag=!wrenched] run effect give @a[team=Blue,distance=..10] instant_health 1 0 true

execute at @s[team=Blue,tag=wrenched] run effect give @a[team=Blue,distance=..10] regeneration 8 1 true

execute at @s[team=Blue,tag=wrenched] run effect give @a[team=Blue,distance=..10] instant_health 1 1 true

execute at @s[team=Blue] as @a[team=Blue,distance=..10] unless score @s Kit matches 4 run scoreboard players add #blueHS healstreak 1

execute at @s run playsound entity.player.levelup master @a[distance=..15] ~ ~ ~ 0.3 2

execute at @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run playsound royalsiege:abilities.healing_spell master @a[distance=..15,team=Red] ~ ~ ~ 0.3 1

execute at @s[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run playsound royalsiege:abilities.healing_spell master @a[distance=..15,team=Blue] ~ ~ ~ 0.3 1

execute if entity @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run scoreboard players reset #angelspellsred voicelineCD

execute if entity @s[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run scoreboard players reset #angelspellsblue voicelineCD

clear @s carrot_on_a_stick{HealingSpell:1b}

tag @s remove wrenched