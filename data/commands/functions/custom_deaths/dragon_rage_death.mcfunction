loot spawn ~ -5 ~ loot commands:rng/dragon_rage_death
execute as @e[type=item,nbt={Item:{tag:{dragon_rage_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{dragon_rage_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" couldn't handle the rage.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" was engulfed in Dragon Rage.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was blasted to pieces by Dragon Rage.","color":"white"}]

scoreboard players reset #rng RNG

execute if entity @s[team=Red] if entity @a[limit=1,team=Blue,scores={Kit=12,gliding=1..}] run advancement grant @a[limit=1,team=Blue,scores={Kit=12,gliding=1..}] only commands:character_challenges/dragon_dive

execute if entity @s[team=Blue] if entity @a[limit=1,team=Red,scores={Kit=12,gliding=1..}] run advancement grant @a[limit=1,team=Red,scores={Kit=12,gliding=1..}] only commands:character_challenges/dragon_dive

function commands:custom_deaths/advancement_remove