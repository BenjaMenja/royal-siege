tag @s add shop

dialog show @s[scores={Kit=1}] commands:shops/warrior_shop

dialog show @s[scores={Kit=2}] commands:shops/ninja_shop

dialog show @s[scores={Kit=3}] commands:shops/guardian_shop

dialog show @s[scores={Kit=4}] commands:shops/angel_shop

dialog show @s[scores={Kit=5}] commands:shops/archer_shop

dialog show @s[scores={Kit=6}] commands:shops/wizard_shop

dialog show @s[scores={Kit=7}] commands:shops/pirate_shop

dialog show @s[scores={Kit=8}] commands:shops/ent_shop

dialog show @s[scores={Kit=9}] commands:shops/poseidon_shop

dialog show @s[scores={Kit=10}] commands:shops/robot_shop

dialog show @s[scores={Kit=11}] commands:shops/chef_shop

dialog show @s[scores={Kit=12}] commands:shops/dragon_shop

dialog show @s[scores={Kit=13}] commands:shops/gambler_shop

dialog show @s[scores={Kit=14}] commands:shops/astronaut_shop

dialog show @s[scores={Kit=15}] commands:shops/firecracker_shop

dialog show @s[scores={Kit=16}] commands:shops/school_nurse_shop

dialog show @s[scores={Kit=17}] commands:shops/necromancer_shop

execute if data storage royalsiege:settings {Gamemode:0} run tellraw @s[tag=shop,tag=inCurrentMatch] [{"text":"\n          [King Activation]","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Cost - 300 Siege Bucks","color":"gold"},{"text":"\nActivates your king for 5s. Your king is free to move within his throne room during this time period.\nRepeatedly purchasing this item will increase the timer by 5s, up to 1 minute."}]},"click_event":{"action":"run_command","command":"/trigger textClick set 101"}},{"text":"\n\n","hover_event":{"action":"show_text","value":[{"text":"","color":"gold"}]}}]

execute if data storage royalsiege:settings {Gamemode:1} run tellraw @s[tag=shop,tag=inCurrentMatch] {"text":"\n"}

tag @s remove shop

