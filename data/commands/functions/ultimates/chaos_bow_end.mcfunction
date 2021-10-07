clear @s crossbow{chaosbow:1b}

tellraw @s {"text":"The chaos bow crumbled to dust...","color":"aqua"}

give @s[predicate=!commands:inventory/bottomless_quiver] arrow{CustomModelData:12,display:{Name:'{"text":"Bottomless Quiver","italic":false}'}} 1

scoreboard players reset @s chaosBowDur