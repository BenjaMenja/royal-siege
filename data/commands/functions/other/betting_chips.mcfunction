scoreboard players set @s[tag=!chipbet,scores={textClick=122,Money=100..}] chipBet 1

scoreboard players set @s[scores={textClick=123,Money=200..}] chipBet 2

scoreboard players set @s[scores={textClick=124,Money=300..}] chipBet 3

scoreboard players set @s[scores={textClick=125,Money=500..}] chipBet 4

scoreboard players set @s[scores={textClick=126,Money=1000..}] chipBet 5

scoreboard players remove @s[scores={textClick=122,Money=100..}] Money 100

scoreboard players remove @s[scores={textClick=123,Money=200..}] Money 200

scoreboard players remove @s[scores={textClick=124,Money=300..}] Money 300

scoreboard players remove @s[scores={textClick=125,Money=500..}] Money 500

scoreboard players remove @s[scores={textClick=126,Money=1000..}] Money 1000

tag @s[scores={textClick=122,Money=100..}] add chipbet

tag @s[scores={textClick=123,Money=200..}] add chipbet

tag @s[scores={textClick=124,Money=300..}] add chipbet

tag @s[scores={textClick=125,Money=500..}] add chipbet

tag @s[scores={textClick=126,Money=1000..}] add chipbet

execute if entity @s[team=Red] run tag @r[team=Blue,tag=!notAlive] add hasBounty

execute if entity @s[team=Blue] run tag @r[team=Red,tag=!notAlive] add hasBounty

#Display Which bounty

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=1}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Warrior)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=2}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Ninja)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=3}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Guardian)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=4}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Angel)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=5}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Archer)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=6}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Wizard)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=7}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Pirate)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=8}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Ent)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=9}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Poseidon)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=10}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Robot)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=11}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Chef)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=12}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Dragon)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Red] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=13}] run tellraw @a[team=Red] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Gambler)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=1}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Warrior)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=2}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Ninja)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=3}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Guardian)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=4}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Angel)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=5}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Archer)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=6}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Wizard)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=7}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Pirate)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=8}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Ent)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=9}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Poseidon)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=10}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Robot)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=11}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Chef)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=12}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Dragon)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

execute if entity @s[team=Blue] if entity @a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive,scores={Kit=13}] run tellraw @a[team=Blue] [{"text":"Your gambler has placed a bounty on: ","color":"aqua"},{"selector":"@a[tag=hasBounty,tag=!foundBounty,limit=1,tag=!notAlive]"},{"text":" (Gambler)\nHelp your gambler kill them for a big cash reward!","color":"aqua"}]

#End

tag @a[tag=hasBounty,tag=!foundBounty] add foundBounty