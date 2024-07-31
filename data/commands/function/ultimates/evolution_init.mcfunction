tag @s add evolve

execute if items entity @s armor.chest leather_chestplate[custom_data~{dragonscales:1b}] run tag @s add noElytra

loot replace entity @a[tag=noElytra] armor.chest loot commands:shop_items/elytra

playsound entity.ender_dragon.ambient master @a[distance=..20] ~ ~ ~ 1 0

give @s firework_rocket 64

tellraw @a [{"selector":"@s"},{"text":" has evolved!"}]

scoreboard players add @s ultsUsed 1

clear @s carrot[custom_data~{evolutionUlt:1b}]