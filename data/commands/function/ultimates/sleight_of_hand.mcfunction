tag @s add sleightofhand

tellraw @a [{"selector":"@s"},{"text":" cheated the system!"}]

scoreboard players set @s pCardsTimer 1

scoreboard players add @s ultsUsed 1

clear @s carrot[custom_data~{sleightofhand:1b}]