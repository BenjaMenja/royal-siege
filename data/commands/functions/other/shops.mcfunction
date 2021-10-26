tag @s add shop

tellraw @s[tag=shop,scores={Kit=1}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Warrior Shop!","color":"#5AF6F9"},{"text":"\n\n"},{"text":"[Warrior Shield]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 500 Siege Bucks\nA shield that grants you increased max health and attack damage.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 1"}},{"text":"         ","color":"gold"},{"text":"[Valkyrie Axe]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 650 Siege Bucks\nA very high damage axe with high knockback.\nHowever, it has a quite slow attack speed.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 2"}},{"text":"\n\n","color":"gold"},{"text":"[Knight's Plate]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 700 Siege Bucks\nA much more powerful iron chestplate with\na variety of increased stats.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 3"}},{"text":"          ","color":"gold"},{"text":"[Strength Potion]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nA long lasting strength potion.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 4"}},{"text":"\n\n","color":"gold"},{"text":"[Strength Stone]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 600 Siege Bucks\nA stone that increases your damage when\nin your offhand.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 5"}},{"text":"        ","color":"gold"},{"text":"[2 Golden Apples]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nLiterally just 2 golden apples.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 6"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Gives nearby enemies slowness I.\nUpgrading will give nearby enemies slowness II.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=2}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Ninja Shop!","color":"#5AF6F9"},{"text":"\n\n"},{"text":"[C4]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 300 Siege Bucks\nPlants a C4 explosive on the ground.\nThe explosive can be detonated with the accompanying detonator.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 7"}},{"text":"                    ","color":"gold"},{"text":"[Ender Pearl]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nA simple Ender Pearl.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 8"}},{"text":"\n\n","color":"gold"},{"text":"[Bouncy Boots]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 600 Siege Bucks\nA pair of boots that gives you increased jump height.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 9"}},{"text":"         ","color":"gold"},{"text":"[Lifesteal Dagger]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 650 Siege Bucks\nA medium damage dagger that restores health when you kill with it.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 10"}},{"text":"\n\n","color":"gold"},{"text":"[Poison Dagger]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 650 Siege Bucks\nA medium damage dagger that poisons enemies if they are struck by it.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 11"}},{"text":"        ","color":"gold"},{"text":"[Chicken Bombs]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nA 16 stack of throwable chicken bombs.\nIf a chicken hatches, it will violently explode.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 12"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Landing a killing blow will give you one of your dashes back.\n It will also give you Strength I for 8 seconds.\nUpgrading will reduce the cooldown of dash from 6s to 5s.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=3}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Guardian Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Knockback Stick]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nA Simple stick with high knockback.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 13"}},{"text":"        ","color":"gold"},{"text":"[Guarding Shield]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 700 Siege Bucks\nGrants buffs to your allies when you deflect damage.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 14"}},{"text":"\n\n","color":"gold"},{"text":"[Guardian Minion]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 250 Siege Bucks\nA spawnable Guardian that attacks enemies.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 15"}},{"text":"        ","color":"gold"},{"text":"[Counter]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nEnter a counter state for 4 seconds.\nWhile in this state, your movement speed will be slowed.\nAfter 4 seconds is up, you will receive a level of strength\nbased on the amount of damage you took while countering.\nThis strength lasts 5 seconds.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 16"}},{"text":"\n\n","color":"gold"},{"text":"[Absorption Shield]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 700 Siege Bucks\nProjects a particle barrier around you.\nThe particle barrier destroys enemy projectiles that come in contact with it.\nThe shield runs on a resource, displayed above your hotbar.\nNot using it causes the resource to regenerate.\nYou will also receive slowness while channeling the barrier.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 17"}},{"text":"        ","color":"gold"},{"text":"[God Apple]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 800 Siege Bucks\nAn enchanted golden apple.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 18"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Gives nearby teammates resistance I.\nUpgrading will cause your resistance effect to last 8s when a teammate moves away from the Guardian.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=4}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Angel Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Health Stone]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 700 Siege Bucks\nA stone that gives you massively increased max health\nwhen in your offhand.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 19"}},{"text":"              ","color":"gold"},{"text":"[Shielding Spell]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 550 Siege Bucks\nA spell that gives lots of shield health to nearby allies.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 20"}},{"text":"\n\n","color":"gold"},{"text":"[Invincibility Potion]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nA splash potion that gives brief invincibility.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 21"}},{"text":"         ","color":"gold"},{"text":"[Vigor Spell]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 550 Siege Bucks\nA spell that gives increased melee capabilities to nearby allies.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 22"}},{"text":"\n\n","color":"gold"},{"text":"[Rejuvenating Spell]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 450 Siege Bucks\nA spell that greatly increases health regeneration for nearby allies.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 23"}},{"text":"        ","color":"gold"},{"text":"[Magic Wand]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 600 Siege Bucks\nA stronger version of the Angelic Staff.\nGives regeneration II to nearby allies when you deal damage.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 24"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Healing 6 teammates in a single life will activate your pixie.\nYour pixie will heal the lowest health teammate every 8s.\nTaking too much damage while it is active will kill the pixie, resetting your healstreak.\nUpgrading will reduce the heal time for the pixie from 8s to 6s.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=5}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Archer Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Sniper Bow]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 700 Siege Bucks\nA very powerful bow that also slows your movement greatly.\nArrows are not affected by gravity.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 25"}},{"text":"                ","color":"gold"},{"text":"[Punch Bow]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 600 Siege Bucks\nA bow enchanted with very high punch, but very little damage.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 26"}},{"text":"\n\n","color":"gold"},{"text":"[Slowing Arrows]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 150 Siege Bucks\nAn 8 pack of slowing arrows.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 27"}},{"text":"            ","color":"gold"},{"text":"[Weakening Arrows]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 250 Siege Bucks\nAn 8 pack of weakness arrows.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 28"}},{"text":"\n\n","color":"gold"},{"text":"[Reveal Drone]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 300 Siege Bucks\nA drone that inflicts glowing and slowness to nearby enemies.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 29"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Landing a hit with your bow gives you speed for 6s, stacking up to Speed III.\nUpgrading increases the max speed level to V.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=6}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Wizard Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Lightning Rod]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 900 Siege Bucks\nA special kind of lightning staff.\nConcentrates lightning strikes onto a single point.\nCan be latched onto blocks and players.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 30"}},{"text":"              ","color":"gold"},{"text":"[Running Shoes]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 600 Siege Bucks\nA pair of running shoes that gives you increased speed and protection.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 31"}},{"text":"\n\n","color":"gold"},{"text":"[Minion Swarm]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 700 Siege Bucks\nSummons a swarm of those pesky wizard minions.\nUnlike naturally spawned ones, there is no limit on the amount of\nwizard minions spawned from swarms.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 32"}},{"text":"               ","color":"gold"},{"text":"[Charger]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 350 Siege Bucks\nGives you 10 charges to your lightning staff and\nempowers your next fireball.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 33"}},{"text":"\n\n","color":"gold"},{"text":"[Rotting Potato]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 450 Siege Bucks\nPoisons an enemy when you strike them with it.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 34"}},{"text":"              ","color":"gold"},{"text":"[Exp. Bomb Blaster]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 900 Siege Bucks\nShoots a spread of Exp. Bottles loaded with explosives.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 35"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Spawns wizard minions every 20s that chase enemies.\nUpgrading decreases spawn delay from 20s to 16s.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=7}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Pirate Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Fake Money Pack]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 500 Siege Bucks\nA 3 pack of fake money.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 36"}},{"text":"                ","color":"gold"},{"text":"[The Dutchman's Blade]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 750 Siege Bucks\nA more powerful version of the Golden Cutlass.\nHowever, it only deals single target damage.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 37"}},{"text":"\n\n","color":"gold"},{"text":"[Davy Jones' Locker]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 500 Siege Bucks\nA Locker that freezes enemies that get too close to it.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 38"}},{"text":"             ","color":"gold"},{"text":"[Hard Ale]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 450 Siege Bucks\nA drink that grants you stronger melee capabilities, but makes you dizzy.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 39"}},{"text":"\n\n","color":"gold"},{"text":"[Chain Hook]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 1000 Siege Bucks\nShoots a hook that can drag an enemy towards you.\nThe enemy will also be slowed.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 40"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"You get 200 Siege Bucks from depositing Siege Coins.\nUpgrading will reduce the cooldown of Fake Money from 45s to 30s.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=8}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Ent Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Magical Wood Sword]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 650 Siege Bucks\nA sword infused with magical wood.\nThis sword rips through enemies, but makes you quite slow.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 41"}},{"text":"                ","color":"gold"},{"text":"[Thorn Bush]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 500 Siege Bucks\nAn extra thorny bush with a very high thorns enchantment.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 42"}},{"text":"\n\n","color":"gold"},{"text":"[Tree Sap]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 500 Siege Bucks\nA healthy drink that gives buffs.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 43"}},{"text":"                          ","color":"gold"},{"text":"[Flaming Stick]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 300 Siege Bucks\nSets your enemies ablaze.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 44"}},{"text":"\n\n","color":"gold"},{"text":"[Poisonous Mushrooms]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nPlaces a poisonous cloud that grows in size if a player stands within it.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 45"}},{"text":"              ","color":"gold"},{"text":"[Toxin Balls]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 92"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 300 Siege Bucks\nA 2 pack of toxin balls that remove healing effects from enemies.","color":"gold"}}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Dealing damage gives nearby teammates Regeneration II for 2s.\nUpgrading increases speed from Blossom from I to II, and increases duration of all Blossom buffs.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=9}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Poseidon Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Fish Slapper]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 450 Siege Bucks\nA raw fish with high knockback.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 46"}},{"text":"              ","color":"gold"},{"text":"[Fish Cannon]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 650 Siege Bucks\nA handheld cannon that shoots explosive fish concentrations.\nEach fish dropped gives an effect when picked up by an enemy.\nCan be used every 10 seconds.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 47"}},{"text":"\n\n","color":"gold"},{"text":"[Land Fish]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 300 Siege Bucks\nSummons a small land fish to annoy your enemies.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 48"}},{"text":"                 ","color":"gold"},{"text":"[Squidzooka]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 700 Siege Bucks\nA handheld weapon that shoots explosive squids.\nThe explosion leaves behind a blinding Area of Effect Cloud.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 49"}},{"text":"\n\n","color":"gold"},{"text":"[Anchor]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 600 Siege Bucks\nA very slow attacking weapon that deals immense damage.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 50"}},{"text":"                    ","color":"gold"},{"text":"[Prismarine Breastplate]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 650 Siege Bucks\nA stronger breastplate infused with prismarine.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 51"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Receive Lightning Spells every 10s, stacking up to 5.\nUpgrading increases the max amount of spells from 5 to 8 and reduces the cooldown from 10s to 9s.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=10}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Robot Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[CD-ROM]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 600 Siege Bucks\nA powerful compact disc with high damage and knockback.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 52"}},{"text":"                ","color":"gold"},{"text":"[Virus Detector]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nIncapacitates an enemy that is currently in your castle.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 53"}},{"text":"\n\n","color":"gold"},{"text":"[Reinforced Casing]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 650 Siege Bucks\nA stronger and more durable casing.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 54"}},{"text":"     ","color":"gold"},{"text":"[Illegal Modifiers]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 1000 Siege Bucks\nIncreases the attack speed of your gunblade while in your offhand.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 55"}},{"text":"\n\n","color":"gold"},{"text":"[Wire Cutters]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 550 Siege Bucks\nA weapon that deals lots of damage to non-players.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 56"}},{"text":"     "},{"text":"[Multi-Barrel Attachment]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nAn ability that makes your weapon fire more bullets.\nThe gun will still consume the normal amount of bullets.\nLasts 10 seconds.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 113"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"None.\nUpgrading will increase his max ammo from 15 to 20.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=11}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Chef's Kitchen!","color":"aqua"},{"text":"\n\n"},{"text":"[Oven]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 600 Siege Bucks\nA building that shoots explosive pizzas at nearby enemies.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 57"}},{"text":"                       ","color":"gold"},{"text":"[Sheep Trainee]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nA sheep that gives resistance to nearby teammates.\nMoves very slowly and has decent health.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 58"}},{"text":"\n\n","color":"gold"},{"text":"[Soup of the Day]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 400 Siege Bucks\nGives you 1 of 5 different soups.\nEach soup is a unique weapon with different stats.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 59"}},{"text":"           ","color":"gold"},{"text":"[Specialty Dish]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 700 Siege Bucks\nGives the chef a wide variety of powerful offensive buffs.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 60"}},{"text":"\n\n","color":"gold"},{"text":"[Scrambled Eggs]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 700 Siege Bucks\nShoots an egg projectile that scrambles an opponent's inventory if it successfully hits.\nCan be used every 25 seconds.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 61"}},{"text":"            ","color":"gold"},{"text":"[Pay Raise]","color":"gold","hoverEvent":{"action":"show_text","contents":{"0":{"text":""},"text":"Cost - 600 Siege Bucks\nShoots a beam that heals teammates. If they are healed by the beam, they will drop some money.\nCan be used every 15 seconds.","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger textClick set 62"}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"None.\nUpgrading reduces the cooldown of mystery basket from 14s to 10s.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=12}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Dragon Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Outrage]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 104"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 500 Siege Bucks\n Fly into a rage, increasing your damage and speed for 8 seconds.\nFailure to land a killing blow for the duration will stun you, hindering your movement and damage.","color":"gold"}}},{"text":"                   ","color":"gold"},{"text":"[Hatchlings]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 105"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 400 Siege Bucks\nA 3 pack of small hatchling minions.\nA maximum of 10 hatchlings can exist at once per team.","color":"gold"}}},{"text":"\n\n","color":"gold"},{"text":"[Crystal Cannon]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 106"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 750 Siege Bucks\nA cannon that shoots end crystals.\nCan be used every 20 seconds.","color":"gold"}}},{"text":"           ","color":"gold"},{"text":"[Corruption]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 107"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 500 Siege Bucks\nCorrupts all players with corrupt credits in their inventory.\nCorrupted players are much more powerful, but are rather unstable.\nThis ability affects all players, including enemies.","color":"gold"}}},{"text":"\n\n","color":"gold"},{"text":"[Elytra]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 108"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 700 Siege Bucks\nA pair of elytra to help aid your mobility.","color":"gold"}}},{"text":"            ","color":"gold"},{"text":"[Necromantic Axe]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 109"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 750 Siege Bucks\nA powerful but slow swinging melee weapon.\nEnemies killed by the axe will be transformed into a slightly more powerful hatchling.","color":"gold"}}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"You cannot receive Strength or Resistance.\nUpgrading will remove the passive limitation.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=13}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Gambler Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Russian Roulette]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 116"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 600 Siege Bucks\nFires a powerful bullet that pierces with a 16.66% success rate.\nCan be used every 5 seconds.","color":"gold"}}},{"text":"          ","color":"gold"},{"text":"[Betting Chips]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 117"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - Varies\nPlaces a bounty on an enemy player.\nIf that player is killed within 20 seconds, you will receive double your bet.\nYou will select a bet amount after selecting this item.","color":"gold"}}},{"text":"\n\n","color":"gold"},{"text":"[Insurance]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 118"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 900 Siege Bucks\nWhile this is in your inventory, all new money your team drops on death will be claimed for 100 Siege Bucks.","color":"gold"}}},{"text":"                ","color":"gold"},{"text":"[Inspection]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 119"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 400 Siege Bucks\nInforms your team on every player that currently has their ultimate.","color":"gold"}}},{"text":"\n\n","color":"gold"},{"text":"[Security Guard]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 120"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 600 Siege Bucks\nA security guard that chases the enemy with the most amount of money.","color":"gold"}}},{"text":"           ","color":"gold"},{"text":"[Coin Gun]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 121"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 300 Siege Bucks\nA gun that fires your own money at the enemy.\nConsumes 100 money per shot, but deals good damage.","color":"gold"}}},{"text":"\n\n"},{"text":"                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Enemies have a 25% chance to drop 2 Siege Coins on death.\nUpgrading will increase the chance from 25% to 50%.","color":"gold"}}}]

tellraw @s[tag=shop,scores={Kit=14}] [{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Astronaut Shop!","color":"aqua"},{"text":"\n\n"},{"text":"[Debris Cannon]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 145"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 600 Siege Bucks\nA cannon that fires debris particles that deal damage and slow for a short time.","color":"gold"}}},{"text":"          ","color":"gold"},{"text":"[Gravity Canceler]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 146"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 400 Siege Bucks\nInverts gravity on the enemy team for a short time.","color":"gold"}}},{"text":"\n\n","color":"gold"},{"text":"[Rocket Boosters]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 147"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 450 Gold\nA rocket booster that gives nearby teammates a large speed buff.","color":"gold"}}},{"text":"        ","color":"gold"},{"text":"[Safety Tether]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 148"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 400 Gold\nTethers you to your current location when used.\nUsing again within 10 seconds will teleport you back to that location.\nYou must be within 30 blocks of the tether for the teleport to work.","color":"gold"}}},{"text":"\n\n","color":"gold"},{"text":"[Gas Vacuum]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 149"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 750 Gold\nWhen used, vacuums up all nearby area effect clouds in a large radius.\nCan be used every 25 seconds.","color":"gold"}}},{"text":"            ","color":"gold"},{"text":"[Enhanced Space Helmet]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 150"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 650 Gold\nAn improved helmet that gives increased defense.\nAlso automatically removes blindness, poison, and wither debuffs from the wearer.","color":"gold"}}},{"text":"\n\n                "},{"text":"[Passive]","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"Your space suit alters how gravity affects you.\nYour jump height is increased and you fall slower.\nHolding the sneak button causes you to fall quickly.\nUpgrading will cause the fast fall to create a small explosion when you land.\nThe explosion activates every 15 seconds.","color":"gold"}}}]

execute if score #gamemode settings matches 0 run tellraw @s[tag=shop] [{"text":"\n          [King Activation]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Cost - 200 Siege Bucks","color":"gold"},{"text":"\nActivates your king for 5 seconds. Your king is free to move within his throne room during this time period.\nRepeatedly purchasing this item will increase the timer by 5 seconds, up to 1 minute."}]},"clickEvent":{"action":"run_command","value":"/trigger textClick set 101"}},{"text":"\n","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"}]}}]

execute if score #gamemode settings matches 1 run tellraw @s[tag=shop] {"text":"\n"}

execute unless score @s Kit matches 7 unless score @s Kit matches 12 run tellraw @s ["",{"text":"          [Upgrade Passive]","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Cost - 2000 Siege Bucks","color":"gold"},{"text":"\nUpgrades your passive ability, which differs\nbased on the class you are playing."}]},"clickEvent":{"action":"run_command","value":"/trigger textClick set 63"}},{"text":"\n"},{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"}]

execute if score @s Kit matches 7 run tellraw @s ["",{"text":"          [Upgrade Passive]","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Cost - 3000 Siege Bucks","color":"gold"},{"text":"\nUpgrades your passive ability, which differs\nbased on the class you are playing."}]},"clickEvent":{"action":"run_command","value":"/trigger textClick set 63"}},{"text":"\n"},{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"}]

execute if score @s Kit matches 12 run tellraw @s ["",{"text":"          [Upgrade Passive]","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Cost - 1500 Siege Bucks","color":"gold"},{"text":"\nUpgrades your passive ability, which differs\nbased on the class you are playing."}]},"clickEvent":{"action":"run_command","value":"/trigger textClick set 63"}},{"text":"\n"},{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"}]

tag @s remove shop

