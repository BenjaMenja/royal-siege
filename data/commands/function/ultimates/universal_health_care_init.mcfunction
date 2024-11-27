execute if entity @s[team=Red] run tag @a[team=Red] add UHC

execute if entity @s[team=Blue] run tag @a[team=Blue] add UHC

tellraw @a [{"selector": "@s"},{"text": " is giving out free health care!"}]

playsound item.book.page_turn master @a ~ ~ ~ 1 1

clear @s carrot[custom_data~{uhc:1b}]