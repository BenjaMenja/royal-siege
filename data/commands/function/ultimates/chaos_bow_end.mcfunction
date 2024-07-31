clear @s crossbow[custom_data~{chaosbow:1b}]

tellraw @s {"text":"The chaos bow crumbled to dust...","color":"aqua"}

loot give @s[predicate=!commands:inventory/bottomless_quiver] loot commands:main_weapons/bottomless_quiver

scoreboard players reset @s chaosBowDur