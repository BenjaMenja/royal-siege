dialog show @s[scores={Kit=1}] commands:character_select/ultimate_selector/warrior
dialog show @s[scores={Kit=2}] commands:character_select/ultimate_selector/ninja
dialog show @s[scores={Kit=3}] commands:character_select/ultimate_selector/guardian
dialog show @s[scores={Kit=4}] commands:character_select/ultimate_selector/angel
dialog show @s[scores={Kit=5}] commands:character_select/ultimate_selector/archer
dialog show @s[scores={Kit=6}] commands:character_select/ultimate_selector/wizard
dialog show @s[scores={Kit=7}] commands:character_select/ultimate_selector/pirate
dialog show @s[scores={Kit=8}] commands:character_select/ultimate_selector/ent
dialog show @s[scores={Kit=9}] commands:character_select/ultimate_selector/poseidon
dialog show @s[scores={Kit=10}] commands:character_select/ultimate_selector/robot
dialog show @s[scores={Kit=11}] commands:character_select/ultimate_selector/chef
dialog show @s[scores={Kit=12}] commands:character_select/ultimate_selector/dragon
dialog show @s[scores={Kit=13}] commands:character_select/ultimate_selector/gambler
dialog show @s[scores={Kit=14}] commands:character_select/ultimate_selector/astronaut
dialog show @s[scores={Kit=15}] commands:character_select/ultimate_selector/firecracker
dialog show @s[scores={Kit=16}] commands:character_select/ultimate_selector/school_nurse
dialog show @s[scores={Kit=17}] commands:character_select/ultimate_selector/necromancer

execute unless score @s Kit matches 1..17 run tellraw @s {"text":"You need to choose a character first!","color":"aqua"}
execute unless score @s Kit matches 1..17 run dialog clear @s 