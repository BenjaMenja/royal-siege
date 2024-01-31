loot spawn ~ -5 ~ loot commands:rng/chrysanthemum_shell_death
execute as @e[type=item,nbt={Item:{tag:{chrysanthemum_shell_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{chrysanthemum_shell_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" got front row tickets to the firework show.","color":"white"}]

execute if score #rng RNG matches 2 if entity @s[team=Red] run tellraw @a [{"selector":"@s "},{"text":" was shelled by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=15}]"},{"text":".","color":"white"}]

execute if score #rng RNG matches 2 if entity @s[team=Blue] run tellraw @a [{"selector":"@s "},{"text":" was shelled by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=15}]"},{"text":".","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" ate a mouthful of gunpowder.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove