clear @s[scores={Kit=10}] carrot_on_a_stick{switchitem:1b} 1

clear @s[scores={Kit=9}] bat_spawn_egg{lightningspell:1b} 1

execute if score #redkings multiItems matches 2.. run teleport @e[tag=King,team=Red,limit=1] ~ -100 ~

execute if score #bluekings multiItems matches 2.. run teleport @e[tag=King,team=Blue,limit=1] ~ -100 ~

execute if score #redhatchlings multiItems matches 11.. run teleport @e[tag=hatchlingred,limit=1,sort=random] ~ -100 ~

execute if score #bluehatchlings multiItems matches 11.. run teleport @e[tag=hatchlingblue,limit=1,sort=random] ~ -100 ~

clear @s[scores={Kit=3}] skeleton_spawn_egg{turret:1b} 1
