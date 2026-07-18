scoreboard players set #hit ray.regen 1
execute if entity @s[team=Red] run function commands:utils/heal/custom_heal {health:4,ult_charge_receiver:"@a[tag=regen.red]"}
execute if entity @s[team=Blue] run function commands:utils/heal/custom_heal {health:4,ult_charge_receiver:"@a[tag=regen.blue]"}
effect give @s[tag=blessed] regeneration 3 1
execute at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 10






