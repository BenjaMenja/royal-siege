#Get blocks if cactus

execute at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered cactus force

#Custom Deaths

execute if entity @s[advancements={commands:sword_death=true}] run function commands:custom_deaths/sword_death

execute if entity @s[advancements={commands:axe_death=true}] run function commands:custom_deaths/axe_death

execute if entity @s[advancements={commands:bow_death=true}] run function commands:custom_deaths/bow_death

execute if entity @s[advancements={commands:sniper_death=true}] run function commands:custom_deaths/sniper_death

execute if entity @s[advancements={commands:gun_death=true}] run function commands:custom_deaths/gun_death

execute if entity @s[advancements={commands:magic_death=true}] run function commands:custom_deaths/magic_death

execute if entity @s[advancements={commands:angelic_staff_death=true}] run function commands:custom_deaths/angelic_staff_death

execute if entity @s[tag=DIED4] run function commands:custom_deaths/lightning_death

execute if entity @s[tag=DIED] run function commands:custom_deaths/fireball_death

execute if entity @s[tag=DIED2] run function commands:custom_deaths/fake_money_death

execute if entity @s[advancements={commands:trident_death=true}] run function commands:custom_deaths/trident_death

execute if entity @s[advancements={commands:chicken_death=true}] run function commands:custom_deaths/chicken_death

execute if entity @s[tag=DIED3] run function commands:custom_deaths/c4_death

execute if entity @s[advancements={commands:minion_death=true}] run function commands:custom_deaths/minion_death

execute if entity @s[scores={fall=300..},nbt={OnGround:1b}] run function commands:custom_deaths/fall_death

execute if entity @s[advancements={commands:king_death=true}] run function commands:custom_deaths/king_death

execute if entity @s[advancements={commands:gatling_death=true}] run function commands:custom_deaths/gatling_death

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

execute if entity @s[tag=shadowdeath] run function commands:custom_deaths/shadow_death

execute if entity @s[tag=decaydeath] run function commands:custom_deaths/decay_death

execute if entity @s[tag=tChestDeath] run function commands:custom_deaths/treasure_chest_death

execute at @s[scores={fall=..299},advancements={commands:playing_card_death=false,commands:royal_flush_death=false,commands:security_guard_death=false,commands:roulette_death=false,commands:stylish_cane_death=false,commands:coin_gun_death=false,commands:magic_wand_death=false,commands:royal_guard_death=false,commands:blunderbuss_death=false,commands:dragon_rage_death=false,commands:dragon_rush_death=false,commands:dragon_claw_death=false,commands:hatchling_death=false,commands:crystal_cannon_death=false,commands:gunblade_melee_death=false,commands:terror_death=false,commands:squidzooka_death=false,commands:anchor_death=false,commands:landfish_death=false,commands:sword_death=false,commands:axe_death=false,commands:bow_death=false,commands:sniper_death=false,commands:gun_death=false,commands:magic_death=false,commands:angelic_staff_death=false,commands:trident_death=false,commands:eject_death=false,commands:chicken_death=false,commands:minion_death=false,commands:king_death=false,commands:cd_death=false,commands:justice_death=false,commands:ai_death=false},tag=!DIED,tag=!DIED2,tag=!DIED3,tag=!DIED4] if block ~ ~0.2 ~ minecraft:lava run function commands:custom_deaths/lava_death

execute at @s[scores={fall=..299},advancements={commands:playing_card_death=false,commands:royal_flush_death=false,commands:security_guard_death=false,commands:roulette_death=false,commands:stylish_cane_death=false,commands:coin_gun_death=false,commands:magic_wand_death=false,commands:royal_guard_death=false,commands:blunderbuss_death=false,commands:dragon_rage_death=false,commands:dragon_rush_death=false,commands:dragon_claw_death=false,commands:hatchling_death=false,commands:crystal_cannon_death=false,commands:gunblade_melee_death=false,commands:terror_death=false,commands:squidzooka_death=false,commands:anchor_death=false,commands:landfish_death=false,commands:sword_death=false,commands:axe_death=false,commands:bow_death=false,commands:sniper_death=false,commands:gun_death=false,commands:magic_death=false,commands:angelic_staff_death=false,commands:trident_death=false,commands:eject_death=false,commands:chicken_death=false,commands:minion_death=false,commands:king_death=false,commands:cd_death=false,commands:justice_death=false,commands:ai_death=false},tag=!DIED,tag=!DIED2,tag=!DIED3,tag=!DIED4] if block ~ ~0.2 ~ minecraft:water run function commands:custom_deaths/water_death

execute at @s[scores={fall=..299,nearbyBlocks=1..},advancements={commands:playing_card_death=false,commands:royal_flush_death=false,commands:security_guard_death=false,commands:roulette_death=false,commands:stylish_cane_death=false,commands:coin_gun_death=false,commands:magic_wand_death=false,commands:royal_guard_death=false,commands:blunderbuss_death=false,commands:dragon_rage_death=false,commands:dragon_rush_death=false,commands:dragon_claw_death=false,commands:hatchling_death=false,commands:crystal_cannon_death=false,commands:gunblade_melee_death=false,commands:terror_death=false,commands:squidzooka_death=false,commands:anchor_death=false,commands:landfish_death=false,commands:sword_death=false,commands:axe_death=false,commands:bow_death=false,commands:sniper_death=false,commands:gun_death=false,commands:magic_death=false,commands:angelic_staff_death=false,commands:trident_death=false,commands:eject_death=false,commands:chicken_death=false,commands:minion_death=false,commands:king_death=false,commands:cd_death=false,commands:justice_death=false,commands:ai_death=false},tag=!DIED,tag=!DIED2,tag=!DIED3,tag=!DIED4] run function commands:custom_deaths/cactus_death

execute if entity @s[team=Red] if score #gamemode settings matches 1 run scoreboard players add #bluekills tdmKills 1

execute if entity @s[team=Blue] if score #gamemode settings matches 1 run scoreboard players add #redkills tdmKills 1

execute if entity @s[tag=hasBounty] run function commands:other/betting_chip_kill

#Reset scores and run function again

scoreboard players set @s Message 0

tag @s remove badCredit

execute as @a[scores={Message=1..},limit=1] run function commands:custom_deaths/custom_deaths