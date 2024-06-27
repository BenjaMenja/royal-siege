#Get blocks if cactus

execute at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered cactus force

#Dropping Money

execute unless entity @a[team=Blue,predicate=commands:inventory/insurance] at @s[team=Blue] run function commands:entities/siege_coin

execute unless entity @a[team=Red,predicate=commands:inventory/insurance] at @s[team=Red] run function commands:entities/siege_coin

execute if entity @a[team=Red,predicate=commands:inventory/insurance] run scoreboard players add @s Money 100

execute if entity @a[team=Blue,predicate=commands:inventory/insurance] run scoreboard players add @s Money 100

#Custom Death Messages

execute if entity @s[advancements={commands:sword_death=true}] run function commands:custom_deaths/sword_death

execute if entity @s[advancements={commands:axe_death=true}] run function commands:custom_deaths/axe_death

execute if entity @s[advancements={commands:bow_death=true}] run function commands:custom_deaths/bow_death

execute if entity @s[advancements={commands:sniper_death=true}] run function commands:custom_deaths/sniper_death

execute if entity @s[advancements={commands:gun_death=true}] run function commands:custom_deaths/gun_death

execute if entity @s[advancements={commands:magic_death=true}] run function commands:custom_deaths/magic_death

execute if entity @s[advancements={commands:angelic_staff_death=true}] run function commands:custom_deaths/angelic_staff_death

execute if entity @s[advancements={commands:lightning_damage=true}] run function commands:custom_deaths/lightning_death

execute if entity @s[tag=DIED] run function commands:custom_deaths/fireball_death

execute if entity @s[tag=DIED2] run function commands:custom_deaths/fake_money_death

execute if entity @s[advancements={commands:trident_death=true}] run function commands:custom_deaths/trident_death

execute if entity @s[advancements={commands:chicken_death=true}] run function commands:custom_deaths/chicken_death

execute if entity @s[advancements={commands:c4_death=true}] run function commands:custom_deaths/c4_death

execute if entity @s[advancements={commands:minion_death=true}] run function commands:custom_deaths/minion_death

execute if entity @s[scores={fall=300..},nbt={OnGround:1b}] run function commands:custom_deaths/fall_death

execute if entity @s[advancements={commands:king_death=true}] run function commands:custom_deaths/king_death

execute if entity @s[advancements={commands:cd_death=true}] run function commands:custom_deaths/cd_death

execute if entity @s[advancements={commands:justice_death=true}] run function commands:custom_deaths/justice_death

execute if entity @s[advancements={commands:ai_death=true}] run function commands:custom_deaths/ai_death

execute if entity @s[advancements={commands:landfish_death=true}] run function commands:custom_deaths/landfish_death

execute if entity @s[advancements={commands:anchor_death=true}] run function commands:custom_deaths/anchor_death

execute if entity @s[advancements={commands:squidzooka_death=true}] run function commands:custom_deaths/squidzooka_death

execute if entity @s[advancements={commands:terror_death=true}] run function commands:custom_deaths/terror_death

execute if entity @s[advancements={commands:gunblade_melee_death=true}] run function commands:custom_deaths/gunblade_melee_death

execute if entity @s[advancements={commands:fireball_death=true}] run function commands:custom_deaths/fireball_death

execute if entity @s[advancements={commands:frying_pan_death=true}] run function commands:custom_deaths/pan_death

execute if entity @s[advancements={commands:soup_death=true}] run function commands:custom_deaths/soup_death

execute if entity @s[advancements={commands:turret_death=true}] run function commands:custom_deaths/turret_death

execute if entity @s[advancements={commands:necromantic_axe_death=true}] run function commands:custom_deaths/necromantic_axe_death

execute if entity @s[advancements={commands:dragon_claw_death=true}] run function commands:custom_deaths/dragon_claw_death

execute if entity @s[advancements={commands:dragon_rage_death=true}] run function commands:custom_deaths/dragon_rage_death

execute if entity @s[advancements={commands:hatchling_death=true}] run function commands:custom_deaths/hatchling_death

execute if entity @s[advancements={commands:crystal_cannon_death=true}] run function commands:custom_deaths/crystal_cannon_death

execute if entity @s[advancements={commands:dragon_rush_death=true}] run function commands:custom_deaths/dragon_rush_death

execute if entity @s[advancements={commands:blunderbuss_death=true}] run function commands:custom_deaths/blunderbuss_death

execute if entity @s[advancements={commands:royal_guard_death=true}] run function commands:custom_deaths/royal_guard_death

execute if entity @s[advancements={commands:magic_wand_death=true}] run function commands:custom_deaths/magic_wand_death

execute if entity @s[advancements={commands:coin_gun_death=true}] run function commands:custom_deaths/coin_gun_death

execute if entity @s[advancements={commands:stylish_cane_death=true}] run function commands:custom_deaths/stylish_cane_death

execute if entity @s[advancements={commands:roulette_death=true}] run function commands:custom_deaths/roulette_death

execute if entity @s[advancements={commands:security_guard_death=true}] run function commands:custom_deaths/security_guard_death

execute if entity @s[advancements={commands:royal_flush_death=true}] run function commands:custom_deaths/royal_flush_death

execute if entity @s[advancements={commands:playing_card_death=true}] run function commands:custom_deaths/playing_card_death

execute if entity @s[advancements={commands:space_wrench_death=true}] run function commands:custom_deaths/space_wrench_death

execute if entity @s[advancements={commands:asteroid_shard_death=true}] run function commands:custom_deaths/asteroid_shard_death

execute if entity @s[advancements={commands:rocket_death=true}] run function commands:custom_deaths/rocket_death

execute if entity @s[advancements={commands:smart_drone_death=true}] run function commands:custom_deaths/smart_drone_death

execute if entity @s[advancements={commands:sparkler_death=true}] run function commands:custom_deaths/sparkler_death

execute if entity @s[advancements={commands:sparkler_damage=true}] run function commands:custom_deaths/sparkler_death

execute if entity @s[advancements={commands:bang_snap_damage=true}] run function commands:custom_deaths/bang_snap_death

execute if entity @s[advancements={commands:pyromania_damage=true}] run function commands:custom_deaths/pyromania_death

execute if entity @s[advancements={commands:cinder_bomb_damage=true}] run function commands:custom_deaths/cinder_bomb_death

execute if entity @s[advancements={commands:chrysanthemum_shell_damage=true}] run function commands:custom_deaths/chrysanthemum_shell_death

execute if entity @s[advancements={commands:pop_rocks_damage=true}] run function commands:custom_deaths/pop_rocks_death

execute if entity @s[tag=shadowdeath] run function commands:custom_deaths/shadow_death

execute if entity @s[tag=decaydeath] run function commands:custom_deaths/decay_death

execute if entity @s[tag=tChestDeath] run function commands:custom_deaths/treasure_chest_death

execute if entity @s[advancements={commands:lava_damage=true}] run function commands:custom_deaths/lava_death

execute if entity @s[advancements={commands:drowning_damage=true}] run function commands:custom_deaths/water_death

execute if entity @s[advancements={commands:cactus_damage=true}] run function commands:custom_deaths/cactus_death

execute if entity @s[advancements={commands:fire_damage=true}] run function commands:custom_deaths/fire_death

execute if entity @s[team=Red] if score #gamemode settings matches 1 run scoreboard players add #bluekills tdmKills 1

execute if entity @s[team=Blue] if score #gamemode settings matches 1 run scoreboard players add #redkills tdmKills 1

execute if entity @s[tag=hasBounty] run function commands:other/betting_chip_kill

#Score Removals

function commands:custom_deaths/reset_cooldowns

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run scoreboard players set @s Respawn -101

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run scoreboard players set @s RedKit -101

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run scoreboard players set @s BlueKit -101

scoreboard players reset @s InvisDur

execute if entity @s[team=Red,scores={Kit=4}] run scoreboard players set #redHS healstreak 0

execute if entity @s[team=Blue,scores={Kit=4}] run scoreboard players set #blueHS healstreak 0

#Attribute Removal

function commands:attributes/clear_all_attribute_modifiers

#Ultimate Check

tag @s[tag=ultimateInv] add hadUltimate

tag @s add notAlive

#Other Tag removals

tag @s remove hasDebrisCannon

tag @s remove hasGravityCanceler

tag @s remove hasGasVacuum

tag @s remove cloaked

tag @s remove justiceKill

#Reset scores and run function again

scoreboard players set @s Message 0

execute as @a[scores={Message=1..},limit=1] run function commands:custom_deaths/custom_deaths