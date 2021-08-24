scoreboard players operation @s[advancements={commands:ult_charge_entities=true}] Ultcharge /= #5ultcharge Ultcharge

scoreboard players operation @s[advancements={commands:ult_charge_entities=false}] Ultcharge /= #2ultcharge Ultcharge

execute as @s[scores={Ultimate=1,Kit=2}] run scoreboard players operation @s Ninjault += @s Ultcharge

execute as @s[scores={Ultimate=2,Kit=1}] run scoreboard players operation @s Horse += @s Ultcharge

execute as @s[scores={Ultimate=3,Kit=3}] run scoreboard players operation @s immorTimer += @s Ultcharge

execute as @s[scores={Ultimate=4,Kit=4}] run scoreboard players operation @s LifeForce += @s Ultcharge

execute as @s[scores={Ultimate=5,Kit=5}] run scoreboard players operation @s Barrage += @s Ultcharge

execute as @s[scores={Ultimate=6,Kit=6}] run scoreboard players operation @s Kerfuffle += @s Ultcharge

execute as @s[scores={Ultimate=7,Kit=7}] run scoreboard players operation @s Treasure += @s Ultcharge

execute as @s[scores={Ultimate=8,Kit=8}] run scoreboard players operation @s Tree += @s Ultcharge

execute as @s[scores={Ultimate=9,Kit=9}] run scoreboard players operation @s scourgeTimer += @s Ultcharge

execute as @s[scores={Ultimate=10,Kit=10}] run scoreboard players operation @s RobotUlt += @s Ultcharge

execute as @s[scores={Ultimate=11,Kit=2}] run scoreboard players operation @s InvisTimer += @s Ultcharge

execute as @s[scores={Ultimate=12,Kit=1}] run scoreboard players operation @s RallyTimer += @s Ultcharge

execute as @s[scores={Ultimate=13,Kit=3}] run scoreboard players operation @s BarrierTimer += @s Ultcharge

execute as @s[scores={Ultimate=14,Kit=4}] run scoreboard players operation @s PotionTimer += @s Ultcharge

execute as @s[scores={Ultimate=15,Kit=5}] run scoreboard players operation @s JusticeTimer += @s Ultcharge

execute as @s[scores={Ultimate=16,Kit=6}] run scoreboard players operation @s MinionTimer += @s Ultcharge

execute as @s[scores={Ultimate=17,Kit=7}] run scoreboard players operation @s fDutchmanTimer += @s Ultcharge

execute as @s[scores={Ultimate=18,Kit=8}] run scoreboard players operation @s DecayTimer += @s Ultcharge

execute as @s[scores={Ultimate=19,Kit=9}] run scoreboard players operation @s terrorTimer += @s Ultcharge

execute as @s[scores={Ultimate=20,Kit=10}] run scoreboard players operation @s RobotTimer += @s Ultcharge

execute as @s[scores={Ultimate=21,Kit=11}] run scoreboard players operation @s dinnerTimer += @s Ultcharge

execute if score #gamemode settings matches 0 as @s[scores={Ultimate=22,Kit=11}] run scoreboard players operation @s closingTimer += @s Ultcharge

execute if score #gamemode settings matches 1 as @s[scores={Ultimate=22,Kit=11}] run scoreboard players operation @s pizzaTimer += @s Ultcharge

execute as @s[scores={Ultimate=23,Kit=12}] run scoreboard players operation @s mShowerTimer += @s Ultcharge

execute as @s[scores={Ultimate=24,Kit=12}] run scoreboard players operation @s evolutionTimer += @s Ultcharge

execute as @s[scores={Ultimate=25,Kit=13}] run scoreboard players operation @s bustedTimer += @s Ultcharge

execute as @s[scores={Ultimate=26,Kit=13}] run scoreboard players operation @s bCreditTimer += @s Ultcharge

advancement revoke @s only commands:ult_charge_entities