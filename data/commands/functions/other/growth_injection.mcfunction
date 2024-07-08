execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{growthinjectionred:1b}}}}] run tag @e[type=#commands:growth_injection_targetable,sort=nearest,distance=..3,team=Red,tag=!King,tag=!growthinjected,tag=!royalguard,limit=1] add growthinjected

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{growthinjectionblue:1b}}}}] run tag @e[type=#commands:growth_injection_targetable,sort=nearest,distance=..3,team=Blue,tag=!King,tag=!growthinjected,tag=!royalguard,limit=1] add growthinjected

attribute @e[sort=nearest,distance=..3,tag=growthinjected,limit=1] generic.scale modifier add 17-1-20-0-0 "growthinjection" 0.2 add_multiplied_base

attribute @e[sort=nearest,distance=..3,tag=growthinjected,limit=1] generic.attack_damage modifier add 2-1-20-0-0 "growthinjection" 0.2 add_multiplied_base

execute at @e[sort=nearest,distance=..3,tag=growthinjected,limit=1] run particle dust{color:[0.0,1.0,0.0],scale:1} ~ ~ ~ 0.3 0.3 0.3 1 10

kill @s

