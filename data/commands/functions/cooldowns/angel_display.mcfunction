execute run scoreboard players operation @s hSpellStore = @s healSpell

execute store result score @s hSpellDis run scoreboard players operation @s hSpellStore /= #ticks constant

scoreboard players operation @s oSpellStore = @s HealerItems

execute store result score @s oSpellDis run scoreboard players operation @s oSpellStore /= #ticks constant

scoreboard players operation @s RegenStaffStore = @s RegenTimer

execute store result score @s RegenStaffDis run scoreboard players operation @s RegenStaffStore /= #ticks constant

title @s[scores={Kit=4}] actionbar [{"text":"Healing Spell: ","color":"green"},{"score":{"name":"*","objective":"hSpellDis"},"color":"aqua"},{"text":"   Other Spells: ","color":"green"},{"score":{"name":"*","objective":"oSpellDis"},"color":"aqua"},{"text":"   Angelic Staff: ","color":"green"},{"score":{"name":"*","objective":"RegenStaffDis"},"color":"aqua"},{"text":"   Healstreak: ","color":"green"},{"score":{"name":"#redHS","objective":"healstreak"},"color":"aqua"},{"text":"/6","color":"green"}]

title @s[scores={Kit=4}] actionbar [{"text":"Healing Spell: ","color":"green"},{"score":{"name":"*","objective":"hSpellDis"},"color":"aqua"},{"text":"   Other Spells: ","color":"green"},{"score":{"name":"*","objective":"oSpellDis"},"color":"aqua"},{"text":"   Angelic Staff: ","color":"green"},{"score":{"name":"*","objective":"RegenStaffDis"},"color":"aqua"},{"text":"   Healstreak: ","color":"green"},{"score":{"name":"#blueHS","objective":"healstreak"},"color":"aqua"},{"text":"/6","color":"green"}]
