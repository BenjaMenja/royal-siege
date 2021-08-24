execute if entity @s[team=Red] run tag @a[team=Blue,tag=!notAlive] add badCredit

execute if entity @s[team=Blue] run tag @a[team=Red,tag=!notAlive] add badCredit

tellraw @a [{"selector":"@s"},{"text":" has punished those with bad credit!"}]

clear @s carrot_on_a_stick{badcredit:1b}