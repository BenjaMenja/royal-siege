tag @s[tag=!practiceRangePVP] add temp

tag @s[tag=!practiceRangePVP] add practiceRangePVP

execute if entity @s[tag=temp] run tellraw @a [{"selector":"@s"},{"text":" has enabled PVP!","color":"white"}]

tag @s[tag=temp] add STOP

tag @s remove temp

tag @s[tag=!STOP] add END

tag @s[tag=practiceRangePVP,tag=!STOP,tag=END] remove practiceRangePVP

execute if entity @s[tag=END] run tellraw @a [{"selector":"@s"},{"text":" has disabled PVP!","color":"white"}]

tag @s remove STOP

tag @s remove END