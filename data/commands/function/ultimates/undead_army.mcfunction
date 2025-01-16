execute if entity @s[team=Red] run summon minecraft:marker ~ ~0.1 ~ {Tags:["undeadArmyRed","undeadArmy"]}

execute if entity @s[team=Blue] run summon minecraft:marker ~ ~0.1 ~ {Tags:["undeadArmyBlue","undeadArmy"]}

tellraw @a [{"selector":"@s"},{"text":" is summoning an undead army!"}]

clear @s carrot[custom_data~{undeadarmy:1b}]