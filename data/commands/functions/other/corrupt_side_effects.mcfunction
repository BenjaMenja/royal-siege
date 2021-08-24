loot spawn ~ -5 ~ loot commands:rng/corrupt_side_effects
execute as @e[type=item,nbt={Item:{tag:{corruptsideeffect:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{corruptsideeffect:1b}}}]

execute if score #rng RNG matches 1 run effect give @s nausea 4 0 true

execute if score #rng RNG matches 2 run effect give @s slowness 2 1 true

execute if score #rng RNG matches 3 run effect give @s jump_boost 3 240 true

execute if score #rng RNG matches 4 run effect give @s levitation 2 129 true

scoreboard players reset #rng RNG
