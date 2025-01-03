#Player Class Scoreboards

execute as @a run function commands:admin/initialize_class_info

#Teams

team add Blue

team add Red

team add spectator

team add parkour

#Gamerules

gamerule doImmediateRespawn true

#Old Scoreboards that were made before this file existed
scoreboard objectives add Kit dummy
scoreboard objectives add textClick dummy
scoreboard objectives add ultCheck dummy
scoreboard objectives add RNG dummy
scoreboard objectives add Ultimate dummy
scoreboard objectives add spawnStuff dummy
scoreboard objectives add classInfo dummy
scoreboard objectives add Money dummy
scoreboard objectives add settings dummy
scoreboard objectives add secret dummy
scoreboard objectives add usedCOAS dummy
scoreboard objectives add Message dummy
scoreboard objectives add Timer dummy
scoreboard objectives add multiItems dummy
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
scoreboard objectives add constant dummy
scoreboard players set #10000 constant 10000
scoreboard objectives add gameDuration dummy
scoreboard objectives add totalDeaths dummy
scoreboard objectives add UUID dummy
scoreboard objectives add voicelineCD dummy
scoreboard objectives add nearbyBlocks dummy
scoreboard objectives add players dummy
scoreboard objectives add healthVar dummy
scoreboard objectives add temp dummy
scoreboard objectives add PPainSong dummy
scoreboard objectives add parkourTime dummy
scoreboard objectives add matchID dummy
scoreboard objectives add Ultcharge dummy
scoreboard objectives add RedKit dummy
scoreboard objectives add BlueKit dummy
scoreboard objectives add ray.LOS dummy
scoreboard objectives add activeHotbar dummy
scoreboard objectives add Respawn dummy
scoreboard objectives add Health health
scoreboard objectives modify Health displayname {"text":""}
scoreboard objectives add dashcharge dummy
scoreboard objectives add Mimic dummy
scoreboard objectives add Start dummy
scoreboard objectives add End dummy
scoreboard objectives add shadow dummy
scoreboard objectives add ItemKill dummy
scoreboard objectives add WarriorItem dummy
scoreboard objectives add Defend dummy
scoreboard objectives add corruptBank dummy
scoreboard objectives add tdmKills dummy
scoreboard objectives add visfix dummy
scoreboard objectives add Horse dummy
scoreboard objectives add Horse1 dummy
scoreboard objectives add smokeDis dummy
scoreboard objectives add smokeStore dummy
scoreboard objectives add NinjaItems dummy
scoreboard objectives add blossomTimer dummy
scoreboard objectives add Ninjault dummy
scoreboard objectives add immorTimer dummy
scoreboard objectives add LifeForce dummy
scoreboard objectives add ChaosTimer dummy
scoreboard objectives add Kerfuffle dummy
scoreboard objectives add Treasure dummy
scoreboard objectives add Tree dummy
scoreboard objectives add scourgeTimer dummy
scoreboard objectives add RobotUlt dummy
scoreboard objectives add InvisTimer dummy
scoreboard objectives add RallyTimer dummy
scoreboard objectives add BarrierTimer dummy
scoreboard objectives add JusticeTimer dummy
scoreboard objectives add MinionTimer dummy
scoreboard objectives add fDutchmanTimer dummy
scoreboard objectives add DecayTimer dummy
scoreboard objectives add terrorTimer dummy
scoreboard objectives add RobotTimer dummy
scoreboard objectives add dinnerTimer dummy
scoreboard objectives add pizzaTimer dummy
scoreboard objectives add mShowerTimer dummy
scoreboard objectives add evolutionTimer dummy
scoreboard objectives add bustedTimer dummy
scoreboard objectives add sleightTimer dummy
scoreboard objectives add rocLaunchTimer dummy
scoreboard objectives add droneTimer dummy
scoreboard objectives add RSAttr.AssaultSpellAtkDmg dummy
scoreboard objectives add RSAttr.AssaultSpellSpeed dummy
scoreboard objectives add RSAttr.AssaultSpellSpeedWrench dummy
scoreboard objectives add RSAttr.VigorSpellSpeed dummy
scoreboard objectives add RSAttr.VigorSpellAtkDmg dummy
scoreboard objectives add RSAttr.NinjaPassiveAtkDmg dummy
scoreboard objectives add RSAttr.NinjaDashSpeed dummy
scoreboard objectives add RSAttr.CorruptionAtkDmg dummy
scoreboard objectives add RSAttr.CorruptionSpeed dummy
scoreboard objectives add RSAttr.CorruptionSlow dummy
scoreboard objectives add RSAttr.CounterAtkDmg dummy
scoreboard objectives add RSAttr.CounterSlow dummy
scoreboard objectives add RSAttr.MysteryBasketAtkDmg dummy
scoreboard objectives add RSAttr.MysteryBasketSpeed dummy
scoreboard objectives add RSAttr.MysteryBasketAtkSpd dummy
scoreboard objectives add RSAttr.PoseidonAugmentAtkDmg dummy
scoreboard objectives add RSAttr.DinnerEffectAtkDmg dummy
scoreboard objectives add RSAttr.DinnerEffectSpeed dummy
scoreboard objectives add RSAttr.DinnersReadyAtkSpd dummy
scoreboard objectives add RSAttr.InvisCloakAtkDmg dummy
scoreboard objectives add RSAttr.InvisCloakSpeed dummy
scoreboard objectives add RSAttr.RallyAtkDmg dummy
scoreboard objectives add RSAttr.RallySpeed dummy
scoreboard objectives add RSAttr.ArcherPassiveSpeed dummy
scoreboard objectives add RSAttr.BlossomSpeed dummy
scoreboard objectives add RSAttr.BlossomUpgradeSpeed dummy
scoreboard objectives add RSAttr.OutrageSpeed dummy
scoreboard objectives add RSAttr.OutrageSlow dummy
scoreboard objectives add RSAttr.OutrageAtkDmg dummy
scoreboard objectives add RSAttr.RocketBoosterSpeed dummy
scoreboard objectives add RSAttr.ScourgeSeasSpeed dummy
scoreboard objectives add RSAttr.TreeOfLifeSpeed dummy
scoreboard objectives add RSAttr.TreeOfLifeSlow dummy
scoreboard objectives add RSAttr.TreeOfLifeAtkSpd dummy
scoreboard objectives add RSAttr.TreeOfLifeAtkSpdDown dummy
scoreboard objectives add RSAttr.ToxinBallSlow dummy
scoreboard objectives add RSAttr.WarriorPassiveSlow dummy
scoreboard objectives add RSAttr.WarriorPassiveUpgradeSlow dummy
scoreboard objectives add RSAttr.CavalryChargeSlow dummy
scoreboard objectives add RSAttr.SplitPeaSoupSlow dummy
scoreboard objectives add RSAttr.AbsorptionShieldSlow dummy
scoreboard objectives add RSAttr.AbsorptionShieldAtkDmg dummy
scoreboard objectives add RSAttr.DebrisCannonSlow dummy
scoreboard objectives add RSAttr.FishCannonSlow dummy
scoreboard objectives add RSAttr.IronWallSlow dummy
scoreboard objectives add RSAttr.KerfuffleSlow dummy
scoreboard objectives add RSAttr.TerrorOfTheSeasSlow dummy
scoreboard objectives add RSAttr.TerrorOfTheSeasAtkSpd dummy
scoreboard objectives add RSAttr.DecayAuraAtkDmg dummy
scoreboard objectives add RSAttr.LifeforceMaxHP dummy
scoreboard objectives add LightningRod dummy
scoreboard objectives add mimicdeath dummy
scoreboard objectives add HorseDie minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add chaosBowDur dummy
scoreboard objectives add Wall dummy
scoreboard objectives add foof food
scoreboard objectives add gravityTimer dummy
scoreboard objectives add immorDur dummy
scoreboard objectives add tdmTimer dummy
scoreboard objectives add xpspawner dummy
scoreboard objectives add MinionDeath dummy
scoreboard objectives add WizardMinion dummy
scoreboard objectives add kingAttackCD dummy
scoreboard objectives add glowingEffectCD dummy
scoreboard objectives add cHookCD dummy
scoreboard objectives add chainHook dummy
scoreboard objectives add TreasureDelete dummy
scoreboard objectives add hFruitTimer dummy
scoreboard objectives add FruitRemove dummy
scoreboard objectives add hFruitNum dummy
scoreboard objectives add mushroomRadius dummy
scoreboard objectives add Treeremove dummy
scoreboard objectives add fakeTimer dummy
scoreboard objectives add damageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add FireballTimer dummy
scoreboard objectives add LightningTimer dummy
scoreboard objectives add chaosbow minecraft.used:minecraft.crossbow
scoreboard objectives add expBombTimer dummy
scoreboard objectives add witherTimer dummy
scoreboard objectives add ejectTimer dummy
scoreboard objectives add Ninjakill playerKillCount
scoreboard objectives add ninjaDeath deathCount
scoreboard objectives add BurstTimer dummy
scoreboard objectives add PoisonTimer dummy
scoreboard objectives add ToxinTimer dummy
scoreboard objectives add MidasTimer dummy
scoreboard objectives add ExplosionTimer dummy
scoreboard objectives add ironTimer dummy
scoreboard objectives add ironDis dummy
scoreboard objectives add ironStore dummy
scoreboard objectives add multiBarrel dummy
scoreboard objectives add ironwall dummy
scoreboard objectives add slamSuspend dummy
scoreboard objectives add InvisDur dummy
scoreboard objectives add Decay dummy
scoreboard objectives add died deathCount
scoreboard objectives add HealerItems dummy
scoreboard objectives add healSpell dummy
scoreboard objectives add horsed dummy
scoreboard objectives add defensiveSpell dummy
scoreboard objectives add turretTimer dummy
scoreboard objectives add RallyDelay dummy
scoreboard objectives add Marked dummy
scoreboard objectives add useBow minecraft.used:minecraft.bow
scoreboard objectives add jKillTimer dummy
scoreboard objectives add OCTimer dummy
scoreboard objectives add fDutchmanDur dummy
scoreboard objectives add timeLimit dummy
scoreboard objectives add RegenTimer dummy
scoreboard objectives add reload dummy
scoreboard objectives add numProjs dummy
scoreboard objectives add ePearlTimer dummy
scoreboard objectives add craftShovel minecraft.crafted:minecraft.iron_shovel
scoreboard objectives add craftPickaxe minecraft.crafted:minecraft.golden_pickaxe
scoreboard objectives add craftQuartzBlock minecraft.crafted:minecraft.quartz_block
scoreboard objectives add useAnvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add useJukebox minecraft.used:minecraft.music_disc_chirp
scoreboard objectives add ultsEaten dummy
scoreboard objectives add healstreak dummy
scoreboard objectives add boatDistance minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add scourgeKills dummy
scoreboard objectives add eBulletHit dummy
scoreboard objectives add fishCannonTimer dummy
scoreboard objectives add squidzookaTimer dummy
scoreboard objectives add poseidonPassive dummy
scoreboard objectives add scourgeDuration dummy
scoreboard objectives add entPassive minecraft.custom:minecraft.damage_dealt
scoreboard objectives add watcherTimer dummy
scoreboard objectives add attractorTimer dummy
scoreboard objectives add damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damagePan dummy
scoreboard objectives add basketTimer dummy
scoreboard objectives add payRaiseTimer dummy
scoreboard objectives add ray.payRaise dummy
scoreboard objectives add scrambleTimer dummy
scoreboard objectives add dinnerEnd dummy
scoreboard objectives add exCharge dummy
scoreboard objectives add exChargeDelay dummy
scoreboard objectives add kingActive dummy
scoreboard objectives add dragonRushTimer dummy
scoreboard objectives add dragonRageTimer dummy
scoreboard objectives add outrageTimer dummy
scoreboard objectives add corruptTimer dummy
scoreboard objectives add corruptDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add cCannonTimer dummy
scoreboard objectives add evolutionDur dummy
scoreboard objectives add pBowTimer dummy
scoreboard objectives add blunderTimer dummy
scoreboard objectives add coinGunTimer dummy
scoreboard objectives add HSTimer dummy
scoreboard objectives add HSValue dummy
scoreboard objectives add HSdamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add counterDmg minecraft.custom:minecraft.damage_taken
scoreboard objectives add counterTimer dummy
scoreboard objectives add absHearts dummy
scoreboard objectives add absShieldCD dummy
scoreboard objectives add absShieldCount dummy
scoreboard objectives add absShieldTimer dummy
scoreboard objectives add bossHP dummy
scoreboard objectives add royalguardCD dummy
scoreboard objectives add castleChain dummy
scoreboard objectives add ovenTimer dummy
scoreboard objectives add ovenDur dummy
scoreboard objectives add tdmSpawnTime dummy
scoreboard objectives add rouletteTimer dummy
scoreboard objectives add chipBet dummy
scoreboard objectives add betChipTimer dummy
scoreboard objectives add securityTimer dummy
scoreboard objectives add sleightDur dummy
scoreboard objectives add pCardsTimer dummy
scoreboard objectives add dungeonDelay dummy
scoreboard objectives add asteroidTimer dummy
scoreboard objectives add gasVacTimer dummy
scoreboard objectives add tetherTimer dummy
scoreboard objectives add debrisTimer dummy
scoreboard objectives add astroPassTimer dummy
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add wrenchTimer dummy
scoreboard objectives add droneCD dummy
scoreboard objectives add rootingTimer dummy
scoreboard objectives add droneDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add gliding minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add killStreak playerKillCount
scoreboard objectives add hSpellStore dummy
scoreboard objectives add hSpellDis dummy
scoreboard objectives add oSpellDis dummy
scoreboard objectives add oSpellStore dummy
scoreboard objectives add RegenStaffStore dummy
scoreboard objectives add RegenStaffDis dummy
scoreboard objectives add glowingStore dummy
scoreboard objectives add glowingDis dummy
scoreboard objectives add asteroidStore dummy
scoreboard objectives add asteroidDis dummy
scoreboard objectives add wrenchDis dummy
scoreboard objectives add wrenchStore dummy
scoreboard objectives add astroPassDis dummy
scoreboard objectives add astroPassStore dummy
scoreboard objectives add gasVacDis dummy
scoreboard objectives add gasVacStore dummy
scoreboard objectives add debrisDis dummy
scoreboard objectives add debrisStore dummy
scoreboard objectives add gravityDis dummy
scoreboard objectives add gravityStore dummy
scoreboard objectives add basketDis dummy
scoreboard objectives add basketStore dummy
scoreboard objectives add dRageDis dummy
scoreboard objectives add dRageStore dummy
scoreboard objectives add dRushDis dummy
scoreboard objectives add dRushStore dummy
scoreboard objectives add cCannonDis dummy
scoreboard objectives add cCannonStore dummy
scoreboard objectives add hFruitDis dummy
scoreboard objectives add hFruitStore dummy
scoreboard objectives add blossomDis dummy
scoreboard objectives add blossomStore dummy
scoreboard objectives add rootingDis dummy
scoreboard objectives add rootingStore dummy
scoreboard objectives add pCardDis dummy
scoreboard objectives add pCardStore dummy
scoreboard objectives add rouletteDis dummy
scoreboard objectives add rouletteStore dummy
scoreboard objectives add coinGunDis dummy
scoreboard objectives add coinGunStore dummy
scoreboard objectives add dSpellDis dummy
scoreboard objectives add dSpellStore dummy
scoreboard objectives add turretDis dummy
scoreboard objectives add turretStore dummy
scoreboard objectives add fakeDis dummy
scoreboard objectives add fakeStore dummy
scoreboard objectives add cHookDis dummy
scoreboard objectives add cHookStore dummy
scoreboard objectives add lightningDis dummy
scoreboard objectives add lightningStore dummy
scoreboard objectives add fishCannonDis dummy
scoreboard objectives add fishCannonStore dummy
scoreboard objectives add squidzookaDis dummy
scoreboard objectives add squidzookaStore dummy
scoreboard objectives add slamStore dummy
scoreboard objectives add slamDis dummy
scoreboard objectives add exChargeDis dummy
scoreboard objectives add exChargeStore dummy
scoreboard objectives add lightningStaffDis dummy
scoreboard objectives add lightningStaffStore dummy
scoreboard objectives add fireballDis dummy
scoreboard objectives add fireballStore dummy
scoreboard objectives add expBombDis dummy
scoreboard objectives add expBombStore dummy
scoreboard objectives add ejectDis dummy
scoreboard objectives add ejectStore dummy
scoreboard objectives add witherDis dummy
scoreboard objectives add witherStore dummy
scoreboard objectives add cardSuite dummy
scoreboard objectives add cardValue dummy
scoreboard objectives add cardTemp dummy
scoreboard objectives add cardDamage dummy
scoreboard objectives add outrageKill playerKillCount
scoreboard objectives add ray.regen dummy
scoreboard objectives add ray.wrench dummy
scoreboard objectives add ray.lightning dummy
scoreboard objectives add ray.dash dummy
scoreboard objectives add ray.root dummy
scoreboard objectives add mBarrierDur dummy
scoreboard objectives add mMarkDur dummy


#New Scoreboards

scoreboard objectives add payRaiseStore dummy
scoreboard objectives add payRaiseDis dummy
scoreboard objectives add scrambleStore dummy
scoreboard objectives add scrambleDis dummy
scoreboard objectives add sparklerTimer dummy
scoreboard objectives add sparklerDis dummy
scoreboard objectives add sparklerStore dummy
scoreboard objectives add blazingSpeedTimer dummy
scoreboard objectives add blazingSpeedStore dummy
scoreboard objectives add blazingSpeedDis dummy
scoreboard objectives add RSAttr.BlazingSpeed dummy
scoreboard objectives add napalmBucketTimer dummy
scoreboard objectives add napalmBucketStore dummy
scoreboard objectives add napalmBucketDis dummy
scoreboard objectives add RSAttr.NapalmBucketSlow dummy
scoreboard objectives add RSAttr.NapalmBucketArmorShred dummy
scoreboard objectives add RSAttr.BunkerBootsSpeed dummy
scoreboard objectives add pyromaniaTimer dummy
scoreboard objectives add pyromaniaStore dummy
scoreboard objectives add pyromaniaDis dummy
scoreboard objectives add RSAttr.PyromaniaSpeed dummy
scoreboard objectives add RSAttr.PyromaniaAtkDmg dummy
scoreboard objectives add cinderBombDuration dummy
scoreboard objectives add chrysanthemumShellTimer dummy
scoreboard objectives add nearbyPlayers dummy
scoreboard objectives add RSAttr.ChrysanthemumSpeed dummy
scoreboard objectives add popRocksTimer dummy
scoreboard objectives add popRocksDur dummy
scoreboard objectives add counter dummy
scoreboard objectives add RSAttr.AstroGravity dummy
scoreboard objectives add RSAttr.SeismicSlamUpGravity dummy
scoreboard objectives add RSAttr.SeismicSlamDownGravity dummy
scoreboard objectives add RSAttr.SeismicSlamLaunchGravity dummy
scoreboard objectives add RSAttr.SafeFallDist dummy
scoreboard objectives add RSAttr.CShellUpGravity dummy
scoreboard objectives add RSAttr.CShellDownGravity dummy
scoreboard objectives add RSAttr.Rooted dummy
scoreboard objectives add siegeBank dummy
scoreboard objectives add castleWarpTimer dummy
scoreboard objectives add shockGrenadeTimer dummy
scoreboard objectives add shockGrenadeDis dummy
scoreboard objectives add shockGrenadeStore dummy
scoreboard objectives add RSAttr.NoAtkDmg dummy
scoreboard objectives add Rebooting dummy
scoreboard objectives add angelicBlessingTimer dummy
scoreboard objectives add angelicBlessingDis dummy
scoreboard objectives add angelicBlessingStore dummy
scoreboard objectives add ray.angelicBlessing dummy
scoreboard objectives add DarknessTimer dummy
scoreboard objectives add RSAttr.DecayAuraSlow dummy
scoreboard objectives add RSAttr.DecayAuraArmorShred dummy
scoreboard objectives add resurrectionTimer dummy
scoreboard objectives add resurrectionDur dummy
scoreboard objectives add RSAttr.ResurrectionSlow dummy
scoreboard objectives add RSAttr.ResurrectionJump dummy
scoreboard objectives add shurikenTimer dummy
scoreboard objectives add shurikenStore dummy
scoreboard objectives add shurikenDis dummy
scoreboard objectives add RSAttr.GroundingSpellJump dummy
scoreboard objectives add RSAttr.CryoSkeletonSlow dummy
scoreboard objectives add RSAttr.CryoSkeletonJump dummy
scoreboard players set #minuteconst gameDuration 1200
scoreboard players set #secondconst gameDuration 20
scoreboard objectives add ultsUsed dummy
scoreboard objectives add entSelfishness dummy
scoreboard objectives add firCharChallenge dummy
scoreboard objectives add numDrones dummy
scoreboard objectives add totalSiegeBucks dummy
scoreboard objectives add blunderDis dummy
scoreboard objectives add blunderStore dummy
scoreboard objectives add abilityCD dummy
scoreboard objectives add moneyToAdd dummy
scoreboard objectives add useFishingRod minecraft.used:minecraft.fishing_rod
scoreboard objectives add ivDripTimer dummy
scoreboard objectives add ivDripDis dummy
scoreboard objectives add ivDripStore dummy
scoreboard objectives add icePackTimer dummy
scoreboard objectives add icePackDis dummy
scoreboard objectives add icePackStore dummy
scoreboard objectives add icePackUses dummy
scoreboard objectives add defibrillatorTimer dummy
scoreboard objectives add defibrillatorDis dummy
scoreboard objectives add defibrillatorStore dummy
scoreboard objectives add RSAttr.IcePackSpeed dummy
scoreboard objectives add RSAttr.IcePackSlow dummy
scoreboard objectives add icePackPassive dummy
scoreboard objectives add RSAttr.DefibrillatorSlow dummy
scoreboard objectives add lightUpTimer dummy
scoreboard objectives add firstAidTimer dummy
scoreboard objectives add bleedTimer dummy
scoreboard objectives add bleedLevel dummy
scoreboard objectives add bleedEffect dummy
scoreboard objectives add rayVar dummy
scoreboard objectives add RSAttr.VaccineDebuffs dummy
scoreboard objectives add UHCTimer dummy
scoreboard objectives add UHCDur dummy
scoreboard objectives add 10HourTimer dummy
scoreboard objectives add RSAttr.TenHourEnergySpeed dummy
scoreboard objectives add nurWins dummy
scoreboard objectives add nurLosses dummy
scoreboard objectives add nurWinsTDM dummy
scoreboard objectives add nurLossesTDM dummy
scoreboard objectives add RSAttr.InhalerBuffs dummy
scoreboard objectives add ray.dRush dummy
scoreboard objectives add chainHookUUID dummy
scoreboard objectives add RSAttr.StickyBootsGravity dummy
scoreboard objectives add RSAttr.GuardingShieldBuff dummy
scoreboard objectives add RSAttr.CShellArmorShred dummy
scoreboard objectives add readyStatus dummy
scoreboard objectives modify readyStatus displayname {"text":"Ready Status","color":"aqua"}
scoreboard objectives add gravityDur dummy
scoreboard objectives add deathScreen dummy
scoreboard objectives add nurTies dummy
scoreboard objectives add nurTiesTDM dummy
function custom_heal:load

scoreboard objectives remove dmDelay
scoreboard objectives remove olympicVaultTimer
scoreboard objectives remove olympicVaultStore
scoreboard objectives remove olympicVaultDis
scoreboard objectives remove StasisTimer
scoreboard objectives remove closingTimer
scoreboard objectives remove closingEnd
scoreboard objectives remove DecayD
scoreboard objectives remove PotionTimer
scoreboard objectives remove lockerdeath
scoreboard objectives remove fall
scoreboard objectives remove usedCOAS
scoreboard objectives remove JBFix
scoreboard objectives remove JBTime
scoreboard objectives remove KillP
scoreboard objectives remove ray.angelicBlessing
scoreboard objectives remove gasVacDis
scoreboard objectives remove gasVacStore
scoreboard objectives remove gasVacTimer
scoreboard objectives remove useCrossbow