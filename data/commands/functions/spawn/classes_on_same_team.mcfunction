execute as @a[team=Red,scores={Kit=1}] run scoreboard players add Check1 Limit 1

execute as @a[team=Red,scores={Kit=2}] run scoreboard players add Check2 Limit 1

execute as @a[team=Red,scores={Kit=3}] run scoreboard players add Check3 Limit 1

execute as @a[team=Red,scores={Kit=4}] run scoreboard players add Check4 Limit 1

execute as @a[team=Red,scores={Kit=5}] run scoreboard players add Check5 Limit 1

execute as @a[team=Red,scores={Kit=6}] run scoreboard players add Check6 Limit 1

execute as @a[team=Red,scores={Kit=7}] run scoreboard players add Check7 Limit 1

execute as @a[team=Red,scores={Kit=8}] run scoreboard players add Check8 Limit 1

execute as @a[team=Red,scores={Kit=9}] run scoreboard players add Check9 Limit 1

execute as @a[team=Red,scores={Kit=10}] run scoreboard players add Check10 Limit 1

execute as @a[team=Red,scores={Kit=11}] run scoreboard players add Check21 Limit 1

execute as @a[team=Red,scores={Kit=12}] run scoreboard players add Check23 Limit 1

execute as @a[team=Red,scores={Kit=13}] run scoreboard players add Check25 Limit 1

execute as @a[team=Blue,scores={Kit=1}] run scoreboard players add Check11 Limit 1

execute as @a[team=Blue,scores={Kit=2}] run scoreboard players add Check12 Limit 1

execute as @a[team=Blue,scores={Kit=3}] run scoreboard players add Check13 Limit 1

execute as @a[team=Blue,scores={Kit=4}] run scoreboard players add Check14 Limit 1

execute as @a[team=Blue,scores={Kit=5}] run scoreboard players add Check15 Limit 1

execute as @a[team=Blue,scores={Kit=6}] run scoreboard players add Check16 Limit 1

execute as @a[team=Blue,scores={Kit=7}] run scoreboard players add Check17 Limit 1

execute as @a[team=Blue,scores={Kit=8}] run scoreboard players add Check18 Limit 1

execute as @a[team=Blue,scores={Kit=9}] run scoreboard players add Check19 Limit 1

execute as @a[team=Blue,scores={Kit=10}] run scoreboard players add Check20 Limit 1

execute as @a[team=Blue,scores={Kit=11}] run scoreboard players add Check22 Limit 1

execute as @a[team=Blue,scores={Kit=12}] run scoreboard players add Check24 Limit 1

execute as @a[team=Blue,scores={Kit=13}] run scoreboard players add Check26 Limit 1

#Red team

execute if score Check1 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Warriors on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check1 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Warriors off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check1 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=1}] Kit 0

execute if score Check2 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Ninjas on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check2 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Ninjas off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check2 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=2}] Kit 0

execute if score Check3 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Guardians on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check3 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Guardians off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check3 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=3}] Kit 0

execute if score Check4 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Angels on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check4 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Angels off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check4 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=4}] Kit 0

execute if score Check5 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Archers on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check5 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Archers off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check5 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=5}] Kit 0

execute if score Check6 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Wizards on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check6 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Wizards off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check6 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=6}] Kit 0

execute if score Check7 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Pirates on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check7 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Pirates off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check7 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=7}] Kit 0

execute if score Check8 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Ents on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check8 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Ents off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check8 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=8}] Kit 0

execute if score Check9 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Poseidons on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check9 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Poseidons off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check9 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=9}] Kit 0

execute if score Check10 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Robots on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check10 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Robots off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check10 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=10}] Kit 0

execute if score Check21 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Chefs in the "},{"text":"Red ","color":"red"},{"text":"kitchen!"}]

execute if score Check21 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Chefs out of the "},{"text":"Red ","color":"red"},{"text":"kitchen..."}]

execute if score Check21 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=11}] Kit 0

execute if score Check23 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Dragons on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check23 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Dragons off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check23 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=12}] Kit 0

execute if score Check25 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"There are too many Gamblers on the "},{"text":"Red ","color":"red"},{"text":"team!"}]

execute if score Check25 Limit >= 2 Limit run tellraw @a[team=Red] [{"text":"Kicking all Gamblers off of "},{"text":"Red ","color":"red"},{"text":"team..."}]

execute if score Check25 Limit >= 2 Limit run scoreboard players set @a[team=Red,scores={Kit=13}] Kit 0


#Blue team

execute if score Check11 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Warriors on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check11 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Warriors off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check11 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=1}] Kit 0

execute if score Check12 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Ninjas on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check12 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Ninjas off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check12 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=2}] Kit 0

execute if score Check13 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Guardians on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check13 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Guardians off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check13 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=3}] Kit 0

execute if score Check14 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Angels on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check14 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Angels off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check14 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=4}] Kit 0

execute if score Check15 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Archers on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check15 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Archers off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check15 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=5}] Kit 0

execute if score Check16 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Wizards on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check16 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Wizards off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check16 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=6}] Kit 0

execute if score Check17 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Pirates on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check17 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Pirates off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check17 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=7}] Kit 0

execute if score Check18 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Ents on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check18 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Ents off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check18 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=8}] Kit 0

execute if score Check19 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Poseidons on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check19 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Poseidons off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check19 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=9}] Kit 0

execute if score Check20 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Robots on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check20 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Robots off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check20 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=10}] Kit 0

execute if score Check22 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Chefs in the "},{"text":"Blue ","color":"blue"},{"text":"kitchen!"}]

execute if score Check22 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Chefs out of the "},{"text":"Blue ","color":"blue"},{"text":"kitchen..."}]

execute if score Check22 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=11}] Kit 0

execute if score Check24 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Dragons on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check24 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Dragons off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check24 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=12}] Kit 0

execute if score Check26 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"There are too many Gamblers on the "},{"text":"Blue ","color":"blue"},{"text":"team!"}]

execute if score Check26 Limit >= 2 Limit run tellraw @a[team=Blue] [{"text":"Kicking all Gamblers off of "},{"text":"Blue ","color":"blue"},{"text":"team..."}]

execute if score Check26 Limit >= 2 Limit run scoreboard players set @a[team=Blue,scores={Kit=13}] Kit 0

#remove check scores

scoreboard players set Check1 Limit 0

scoreboard players set Check2 Limit 0

scoreboard players set Check3 Limit 0

scoreboard players set Check4 Limit 0

scoreboard players set Check5 Limit 0

scoreboard players set Check6 Limit 0

scoreboard players set Check7 Limit 0

scoreboard players set Check8 Limit 0

scoreboard players set Check9 Limit 0

scoreboard players set Check10 Limit 0

scoreboard players set Check11 Limit 0

scoreboard players set Check12 Limit 0

scoreboard players set Check13 Limit 0

scoreboard players set Check14 Limit 0

scoreboard players set Check15 Limit 0

scoreboard players set Check16 Limit 0

scoreboard players set Check17 Limit 0

scoreboard players set Check18 Limit 0

scoreboard players set Check19 Limit 0

scoreboard players set Check20 Limit 0

scoreboard players set Check21 Limit 0

scoreboard players set Check22 Limit 0

scoreboard players set Check23 Limit 0

scoreboard players set Check24 Limit 0

scoreboard players set Check25 Limit 0

scoreboard players set Check26 Limit 0