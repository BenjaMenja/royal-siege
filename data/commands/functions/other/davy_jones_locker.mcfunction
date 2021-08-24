effect give @s slowness 5 6 true

effect give @s mining_fatigue 5 1 true

effect give @s jump_boost 5 129 true

playsound block.anvil.place master @s ~ ~ ~ 1 0

kill @e[tag=davyLocker,distance=..4,limit=4,sort=nearest]

kill @e[name=Locker,distance=..4,limit=1,sort=nearest]

kill @e[name=LockerBlue,distance=..4,limit=1,sort=nearest]

tag @s remove locked