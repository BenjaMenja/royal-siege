#Player Class Scoreboards

execute as @a run function commands:admin/initialize_class_info

#Teams

team add Blue

team add Red

team add spectator

team add parkour

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
scoreboard objectives add KillP playerKillCount
scoreboard objectives add Message dummy
scoreboard objectives add Timer dummy
scoreboard objectives add multiItems dummy
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
scoreboard objectives add constant dummy
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
scoreboard objectives add dashcharge dummy
scoreboard objectives add Mimic dummy
scoreboard objectives add Start dummy
scoreboard objectives add End dummy
scoreboard objectives add shadow dummy
scoreboard objectives add ItemKill dummy

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