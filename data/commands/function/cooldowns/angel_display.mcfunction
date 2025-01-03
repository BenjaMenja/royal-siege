execute run scoreboard players operation @s hSpellStore = @s healSpell

execute store result score @s hSpellDis run scoreboard players operation @s hSpellStore /= #ticks constant

scoreboard players operation @s oSpellStore = @s HealerItems

execute store result score @s oSpellDis run scoreboard players operation @s oSpellStore /= #ticks constant

scoreboard players operation @s RegenStaffStore = @s RegenTimer

execute store result score @s RegenStaffDis run scoreboard players operation @s RegenStaffStore /= #ticks constant

scoreboard players operation @s angelicBlessingStore = @s angelicBlessingTimer

execute store result score @s angelicBlessingDis run scoreboard players operation @s angelicBlessingStore /= #ticks constant

title @s[scores={Kit=4},predicate=!commands:inventory/angelic_blessing,team=Red] actionbar [{"text":"Angelic Staff: ","color":"green"},{"score":{"name":"*","objective":"RegenStaffDis"},"color":"aqua"},{"text":"   Healing Spell: ","color":"green"},{"score":{"name":"*","objective":"hSpellDis"},"color":"aqua"},{"text":"   Other Spells: ","color":"green"},{"score":{"name":"*","objective":"oSpellDis"},"color":"aqua"},{"text":"   Healstreak: ","color":"green"},{"score":{"name":"#redHS","objective":"healstreak"},"color":"aqua"},{"text":"/6","color":"green"}]

title @s[team=Red,predicate=commands:inventory/angelic_blessing,scores={Kit=4}] actionbar [{"color":"green","text":"   Angelic Staff: "},{"color":"aqua","score":{"name":"*","objective":"RegenStaffDis"}},{"color":"green","text":"   Healing Spell: "},{"color":"aqua","score":{"name":"*","objective":"hSpellDis"}},{"color":"green","text":"   Other Spells: "},{"color":"aqua","score":{"name":"*","objective":"oSpellDis"}},{"color":"green","text":"   Healstreak: "},{"color":"aqua","score":{"name":"#redHS","objective":"healstreak"}},{"color":"green","text":"/6"},{"text":"   Angelic Blessing: "},{"color":"aqua","score":{"name":"*","objective":"angelicBlessingDis"}},{"color":"green","text":"   Blessing Target: "},{"selector":"@a[limit=1,tag=blessed,team=Red]","color":"aqua"}]

title @s[scores={Kit=4},predicate=!commands:inventory/angelic_blessing,team=Blue] actionbar [{"text":"   Angelic Staff: ","color":"green"},{"score":{"name":"*","objective":"RegenStaffDis"},"color":"aqua"},{"text":"   Healing Spell: ","color":"green"},{"score":{"name":"*","objective":"hSpellDis"},"color":"aqua"},{"text":"   Other Spells: ","color":"green"},{"score":{"name":"*","objective":"oSpellDis"},"color":"aqua"},{"text":"   Healstreak: ","color":"green"},{"score":{"name":"#blueHS","objective":"healstreak"},"color":"aqua"},{"text":"/6","color":"green"}]

title @s[team=Blue,predicate=commands:inventory/angelic_blessing,scores={Kit=4}] actionbar [{"color":"green","text":"   Angelic Staff: "},{"color":"aqua","score":{"name":"*","objective":"RegenStaffDis"}},{"color":"green","text":"   Healing Spell: "},{"color":"aqua","score":{"name":"*","objective":"hSpellDis"}},{"color":"green","text":"   Other Spells: "},{"color":"aqua","score":{"name":"*","objective":"oSpellDis"}},{"color":"green","text":"   Healstreak: "},{"color":"aqua","score":{"name":"#blueHS","objective":"healstreak"}},{"color":"green","text":"/6"},{"text":"   Angelic Blessing: "},{"color":"aqua","score":{"name":"*","objective":"angelicBlessingDis"}},{"color":"green","text":"   Blessing Target: "},{"selector":"@a[limit=1,tag=blessed,team=Blue]","color":"aqua"}]