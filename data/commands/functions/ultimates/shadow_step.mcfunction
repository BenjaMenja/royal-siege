tag @s add shadow

execute if entity @s[team=Red] run playsound royalsiege:ultimates.shadow_step_friendly master @a[team=Red] ~ ~ ~ 100 1

execute if entity @s[team=Red] run playsound royalsiege:ultimates.shadow_step_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.shadow_step_friendly master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.shadow_step_enemy master @a[team=Red] ~ ~ ~ 100 1

tellraw @a [{"selector":"@s"},{"text":" has melted into the shadows!"}]

item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:blast_protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:9,Operation:0,UUID:[I;82020384,34567839,-9182949,-888263788],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.15,Operation:1,UUID:[I;82919201,-812,-761393,999202],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;961307443,953892929,-1826378727,676516068]}]} 1

clear @s carrot_on_a_stick{shadowstep:1b}