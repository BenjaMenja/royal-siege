advancement revoke @s only commands:use_ability

#IF Player is rebooting, cannot use abilities

execute if entity @s[tag=rebooting] run return -1

#Internal Cooldown

execute if score @s abilityCD matches ..3 run return -1

execute if score @s abilityCD matches 4.. run scoreboard players set @s abilityCD 0

#Seismic Slam

execute if entity @s[scores={WarriorItem=..0},predicate=commands:holding/seismic_slam,tag=!rooted] at @s run function commands:attributes/adds/add_seismic_slam_up_gravity

#Rally

tag @s[predicate=commands:holding/rally] add rally

#Dash

execute if entity @s[scores={dashcharge=120..},tag=!upgraded,tag=!rooted,predicate=commands:holding/ninja_dash] at @s unless score @s shadow matches 1.. anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/ninja_dash_start_ray

execute if entity @s[scores={dashcharge=100..},tag=upgraded,tag=!rooted,predicate=commands:holding/ninja_dash] at @s unless score @s shadow matches 1.. anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/ninja_dash_start_ray

#Invisibility Cloak

execute if entity @s[predicate=commands:holding/invis_cloak] run function commands:ultimates/invis_cloak

#Shadow Step

execute at @s[predicate=commands:holding/shadow_step] run function commands:ultimates/shadow_step

#Absorption Shield

execute if entity @s[scores={absShieldCount=1..,absShieldCD=40..},predicate=commands:holding/absorption_shield] run function commands:other/absorption_shield

#Counter

execute if entity @s[predicate=commands:holding/counter] run function commands:other/counter

#Immortality

execute if entity @s[predicate=commands:holding/immortality] run function commands:ultimates/immortality

#Magic Barrier

execute if entity @s[predicate=commands:holding/magic_barrier] run function commands:ultimates/magic_barrier_init

#Angelic Staff

tag @s[scores={RegenTimer=..0},predicate=commands:holding/angelic_staff] add regenstaff

execute at @s[tag=regenstaff] anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/regen_staff_start_ray

#Healing Spell

execute if entity @s[scores={healSpell=..0},predicate=commands:holding/healing_spell] run function commands:other/healing_spell

#Defensive Spell

execute if entity @s[scores={HealerItems=..0},predicate=commands:holding/defensive_spell] run function commands:other/defensive_spell

execute if entity @s[scores={defensiveSpell=..0},predicate=commands:holding/defensive_spell] run function commands:other/defensive_spell

#Assault Spell

execute if entity @s[scores={HealerItems=..0},predicate=commands:holding/assault_spell] run function commands:other/assault_spell

#Rejuvenating Spell

execute at @s[predicate=commands:holding/rejuvenating_spell] run function commands:other/rejuvenating_spell

#Shielding Spell

execute at @s[predicate=commands:holding/shielding_spell] run function commands:other/shielding_spell

#Vigor Spell

execute at @s[predicate=commands:holding/vigor_spell] run function commands:other/vigor_spell

#Angelic Blessing

execute if entity @s[scores={angelicBlessingTimer=..0},predicate=commands:holding/angelic_blessing] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/angelic_blessing_start_ray

#Lifeforce

execute if entity @s[predicate=commands:holding/lifeforce] run function commands:ultimates/lifeforce

#Resurrection

execute at @s[predicate=commands:holding/resurrection,team=Red] if entity @e[type=marker,tag=resSoulRed,distance=..3] run function commands:ultimates/resurrection_init

execute at @s[predicate=commands:holding/resurrection,team=Blue] if entity @e[type=marker,tag=resSoulBlue,distance=..3] run function commands:ultimates/resurrection_init

#Glowing Effect

execute if entity @s[scores={glowingEffectCD=..0},predicate=commands:holding/glowing_effect] run function commands:other/glowing_effect

#Chaos Bow

execute if entity @s[predicate=commands:holding/chaos_bow_token] run function commands:ultimates/chaos_bow_init

#Fireball Launcher

execute if entity @s[scores={FireballTimer=..0},predicate=commands:holding/fireball_launcher] at @s run function commands:other/wizard_fireball

#Lightning Staff

execute if entity @s[scores={LightningTimer=120..},predicate=commands:holding/lightning_staff] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/lightning_staff_start_ray

#Eject Button

execute if entity @s[scores={ejectTimer=..0},predicate=commands:holding/eject_button,tag=!rooted] at @s run function commands:other/eject_button

#Exp Bomb Blaster

execute if entity @s[scores={expBombTimer=..0},predicate=commands:holding/exp_bomb_blaster] at @s run function commands:other/exp_bomb_blaster

#Kerfuffle

execute if entity @s[predicate=commands:holding/kerfuffle] run function commands:ultimates/kerfuffle

#Overcharge

execute at @s[predicate=commands:holding/overcharge] run function commands:ultimates/overcharge

#Blunderbuss

execute if entity @s[scores={blunderTimer=..0},predicate=commands:holding/blunderbuss] run tag @s add blunderShoot

execute if entity @s[tag=blunderShoot] at @s run function commands:other/blunderbuss

#Chain Hook

tag @s[predicate=commands:holding/chain_hook] add chain

execute if entity @s[tag=chain,scores={cHookCD=..0}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:other/chain_hook_shot

tag @s[tag=chain] remove chain

#Coin Gun

tag @s[scores={coinGunTimer=..0,Money=100..},predicate=commands:holding/coin_gun] add coinGun

execute if entity @s[tag=coinGun] at @s run function commands:other/coin_gun

#Flying Dutchman

execute at @s[predicate=commands:holding/flying_dutchman,predicate=!commands:in_any_throne_room] run function commands:ultimates/flying_dutchman_init

#Blossom

execute if entity @s[scores={blossomTimer=..0},predicate=commands:holding/blossom] at @s run function commands:other/blossom

#Rooting Spell

execute at @s[team=Red,scores={rootingTimer=..0},predicate=commands:holding/rooting_spell] anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/rooting_spell_start_ray

execute at @s[team=Blue,scores={rootingTimer=..0},predicate=commands:holding/rooting_spell] anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/rooting_spell_blue_start_ray

#Decay Aura

execute at @s[predicate=commands:holding/decay_aura] run function commands:ultimates/decay_aura_init

#Fish Cannon

execute at @s[scores={fishCannonTimer=..0},predicate=commands:holding/fish_cannon_blue] run function commands:other/fish_cannon_blue

execute at @s[scores={fishCannonTimer=..0},predicate=commands:holding/fish_cannon_red] run function commands:other/fish_cannon_red

#Squidzooka

execute at @s[scores={squidzookaTimer=..0},predicate=commands:holding/squidzooka] run function commands:other/squidzooka

#Scourge of the Seas

execute if entity @s[predicate=commands:holding/scourge_of_the_seas] run function commands:ultimates/scourge_of_the_seas

#Gunblade

tag @s[predicate=commands:holding/gunblade,predicate=!commands:is_sneaking,predicate=commands:inventory/gunblade_ammo] add shoot

execute at @s[tag=shoot] anchored eyes run function commands:other/gunblade

#Switch Bullet

tag @s[scores={Kit=10},predicate=commands:holding/gunblade,predicate=commands:is_sneaking] add switching

execute if entity @s[tag=switching] run function commands:other/robot_switch

#Iron Wall

execute if entity @s[scores={ironTimer=..0},predicate=commands:holding/iron_wall] run function commands:other/iron_wall

#Shock Grenade

execute if entity @s[scores={shockGrenadeTimer=..0},predicate=commands:holding/shock_grenade,predicate=!commands:no_lightning_area] run function commands:other/shock_grenade

#Multi Barrel Attachment

execute if entity @s[predicate=commands:holding/multi_barrel_attachment] run function commands:other/multi_barrel_attachment

#Virus Detector

execute if entity @s[predicate=commands:holding/virus_detector,team=Blue] as @r[team=Red,predicate=commands:in_any_blue_castle] run function commands:other/virus_detector

execute if entity @s[predicate=commands:holding/virus_detector,team=Red] as @r[team=Blue,predicate=commands:in_any_red_castle] run function commands:other/virus_detector

#System Reboot

execute if entity @s[predicate=commands:holding/system_reboot] run function commands:ultimates/system_reboot_shot

#Mysterious Brew

execute if entity @s[predicate=commands:holding/mysterious_brew] run function commands:other/mysterious_brew

#Mystery Basket

execute if entity @s[scores={basketTimer=..0},predicate=commands:holding/mystery_basket] at @s run function commands:other/mystery_basket

#Ultimate Charger

execute if entity @s[predicate=commands:holding/ultimate_charger] run function commands:other/ultimate_charger

#Castle Chain

execute if entity @s[predicate=commands:holding/castle_chain] run function commands:other/castle_chain

#Killer King

execute if entity @s[predicate=commands:holding/killer_king] run function commands:other/killer_king

#Pay Raise

execute at @s[team=Blue,scores={payRaiseTimer=..0},predicate=commands:holding/pay_raise_blue] anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/pay_raise_blue_start_ray

execute at @s[team=Red,scores={payRaiseTimer=..0},predicate=commands:holding/pay_raise_red] anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/pay_raise_red_start_ray

#Scrambled Eggs

execute at @s[scores={scrambleTimer=..0},predicate=commands:holding/scrambled_eggs] run function commands:other/scrambled_eggs

#Dinner's Ready

execute if entity @s[predicate=commands:holding/dinners_ready] run function commands:ultimates/dinners_ready

#Pizza Time

execute if entity @s[predicate=commands:holding/pizza_time] run function commands:ultimates/pizza_time

#Dragon Rage

tag @s[scores={dragonRageTimer=..0},predicate=commands:holding/dragon_rage] add dRage

execute at @s[tag=dRage] run function commands:other/dragon_rage

#Dragon Rush

execute if entity @s[scores={dragonRushTimer=..0},predicate=commands:holding/dragon_rush] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/dragon_rush_start_ray

#Corruption

execute if entity @s[predicate=commands:holding/corruption] run function commands:other/corruption

#Crystal Cannon

execute if entity @s[scores={cCannonTimer=..0},predicate=commands:holding/crystal_cannon] at @s run function commands:other/crystal_cannon

#Outrage

execute if entity @s[predicate=commands:holding/outrage] run function commands:other/outrage_init

#Evolution

execute at @s[predicate=commands:holding/evolution] run function commands:ultimates/evolution_init

#Playing Cards

execute if entity @s[scores={pCardsTimer=..0},predicate=commands:holding/playing_cards] run tag @s add cardShooter

execute at @s[tag=cardShooter] run function commands:other/playing_cards

#Inspection

execute if entity @s[predicate=commands:holding/inspection] run function commands:other/inspection

#Security Guard

execute at @s[predicate=commands:holding/security_guard] run function commands:other/security_guard

#Russian Roulette

tag @s[scores={rouletteTimer=..0},predicate=commands:holding/russian_roulette] add rouletteShot

execute at @s[tag=rouletteShot] anchored eyes run function commands:other/russian_roulette

#Busted

execute if entity @s[predicate=commands:holding/busted] run function commands:ultimates/busted

#Sleight of Hand

execute if entity @s[predicate=commands:holding/sleight_of_hand] run function commands:ultimates/sleight_of_hand

#Space Wrench

tag @s[scores={wrenchTimer=..0},predicate=commands:holding/space_wrench] add wrenching

execute at @s[tag=wrenching] anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/space_wrench_start_ray

#Asteroid

execute if entity @s[scores={asteroidTimer=..0},predicate=commands:holding/asteroid] run tag @s add asteroidShooter

execute as @a[tag=asteroidShooter] at @s run function commands:other/asteroid

#Debris Cannon

tag @s[scores={debrisTimer=..0},predicate=commands:holding/debris_cannon] add debrisShooter

execute at @s[tag=debrisShooter] run function commands:other/debris_cannon

#Safety Tether

execute at @s[predicate=commands:holding/safety_tether,tag=tethered] run function commands:other/warp_to_tether

execute at @s[predicate=commands:holding/safety_tether,tag=!tethered] run function commands:other/create_tether

#Gravity Canceler

execute if entity @s[scores={gravityTimer=..0},predicate=commands:holding/gravity_canceler] run function commands:other/gravity_canceler

#Rocket Boosters

execute at @s[predicate=commands:holding/rocket_boosters] run function commands:other/rocket_boosters

#Rocket Launch

execute at @s[predicate=commands:holding/rocket_launch] run function commands:ultimates/rocket_launch_init

#Smart Drone

execute at @s[predicate=commands:holding/smart_drone] run function commands:ultimates/smart_drone_init

#Sparkler

execute if entity @s[scores={sparklerTimer=..0},predicate=commands:holding/sparkler] at @s run function commands:other/sparkler

#Blazing Speed

execute if entity @s[scores={blazingSpeedTimer=..0},predicate=commands:holding/blazing_speed] at @s run function commands:other/blazing_speed

#Napalm Bucket

execute at @s[scores={napalmBucketTimer=..0},predicate=commands:holding/napalm_bucket] run function commands:other/napalm_bucket_splash

#Pyromania

execute at @s[scores={pyromaniaTimer=..0},predicate=commands:holding/pyromania] run function commands:other/pyromania

#Chrysanthemum Shell

execute at @s[predicate=commands:holding/chrysanthemum_shell,tag=chrysanthemumLaunch,tag=cshelldown] run function commands:ultimates/chrysanthemum_rocket

execute at @s[predicate=commands:holding/chrysanthemum_shell,tag=!chrysanthemumLaunch] run function commands:ultimates/chrysanthemum_init

#Pop Rocks

execute at @s[predicate=commands:holding/pop_rocks] run function commands:ultimates/pop_rocks_init

#IV Drip

execute at @s[predicate=commands:holding/iv_drip,scores={ivDripTimer=..0}] run function commands:other/iv_drip_shot

#Defibrillator

execute at @s[predicate=commands:holding/defibrillator,scores={defibrillatorTimer=..0}] run function commands:other/defibrillator_shot

#Live-Attenuated Vaccine

execute at @s[predicate=commands:holding/live_attenuated_vaccine] anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/vaccine_start_ray

#Universal Health Care

execute at @s[predicate=commands:holding/universal_health_care] anchored eyes positioned ^ ^ ^ anchored feet run function commands:ultimates/universal_health_care_init

#10 Hour Energy

execute at @s[predicate=commands:holding/ten_hour_energy] anchored eyes positioned ^ ^ ^ anchored feet run function commands:attributes/adds/add_ten_hour_energy_speed

#Menu

execute if entity @s[predicate=commands:holding/menu] run tellraw @s [{"color":"green","text":"+"},{"color":"yellow","text":"===================================================="},{"text":"\n"},{"color":"#5AF6F9","text":"Welcome to the Menu!"},{"text":"\n\n"},{"clickEvent":{"action":"run_command","value":"/trigger textClick set 64"},"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Opens up your character's shop.","color":"green"}]},"text":"[Shops]"},{"text":"                       "},{"clickEvent":{"action":"run_command","value":"/trigger textClick set 65"},"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Accesses your team's bank.\nYou can view your team's collective amount of Siege Bucks and Corrupt Credits\nas well as deposit and withdraw.","color":"green"}]},"text":"[Bank]"},{"text":"\n\n\n\n"},{"clickEvent":{"action":"run_command","value":"/trigger textClick set 191"},"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Warps you to your castle's respawn point.","color":"green"},{"text":"\nThis has a 3 second delay, and can be interrupted by taking damage.","color":"green"}]},"text":"[Warp to Castle]"},{"text":"\n\n"},{"color":"green","text":"+"},{"color":"yellow","text":"====================================================\n"}]