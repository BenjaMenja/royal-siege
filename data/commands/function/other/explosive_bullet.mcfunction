execute at @a[advancements={commands:explosive_bullet=true}] run summon fireball ~ ~ ~ {CustomNameVisible:0b,ExplosionPower:3,Motion:[0.0,-10.0,0.0],CustomName:'{"text":"Explosive Bullet"}'}

advancement revoke @a[advancements={commands:explosive_bullet=true}] only commands:explosive_bullet

say burger

execute if entity @s[team=Red] run scoreboard players add @a[limit=1,team=Blue,scores={Kit=10}] eBulletHit 1

execute if entity @s[team=Blue] run scoreboard players add @a[limit=1,team=Red,scores={Kit=10}] eBulletHit 1