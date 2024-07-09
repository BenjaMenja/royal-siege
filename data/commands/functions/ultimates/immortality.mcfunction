tag @s add immortality

tellraw @a [{"selector":"@s"},{"text":" has become immortal!"}]

execute at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 100 2

scoreboard players add @s ultsUsed 1

clear @s carrot_on_a_stick[custom_data~{immortality:1b}]