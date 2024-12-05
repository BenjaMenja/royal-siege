execute at @s[team=Red] run summon minecraft:armor_stand ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Health:1000f,Tags:["ivRed","ivBase"]}

execute at @s[team=Blue] run summon minecraft:armor_stand ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Health:1000f,Tags:["ivBlue","ivBase"]}

effect give @s regeneration infinite 1 true

tag @s add ivAttached

tag @n[type=item,tag=ivNeedle] add attached

ride @n[type=item,tag=ivRed] mount @n[type=armor_stand,tag=ivRed]

ride @n[type=item,tag=ivBlue] mount @n[type=armor_stand,tag=ivBlue]


