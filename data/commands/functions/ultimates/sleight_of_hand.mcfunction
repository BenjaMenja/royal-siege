tag @s add sleightofhand

tellraw @a [{"selector":"@s"},{"text":" cheated the system!"}]

scoreboard players set @s pCardsTimer 1

clear @s carrot_on_a_stick[custom_data~{sleightofhand:1b}]