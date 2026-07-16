# Calculate Values

## Warrior

scoreboard players operation @s slamStore = @s WarriorItem

scoreboard players operation @s exChargeStore = @s exCharge

execute store result score @s slamDis run scoreboard players operation @s slamStore /= #ticks constant

execute store result score @s exChargeDis run scoreboard players operation @s exChargeStore /= #ticks constant

## Ninja

scoreboard players operation @s smokeStore = @s NinjaItems

execute store result score @s smokeDis run scoreboard players operation @s smokeStore /= #ticks constant

scoreboard players operation @s shurikenStore = @s shurikenTimer

execute store result score @s shurikenDis run scoreboard players operation @s shurikenStore /= #ticks constant

scoreboard players operation @s dashStore = @s dashcharge

execute store result score @s dashDis run scoreboard players operation @s dashStore /= #dashCD constant

## Guardian

scoreboard players operation @s dSpellStore = @s defensiveSpell

execute store result score @s dSpellDis run scoreboard players operation @s dSpellStore /= #ticks constant

scoreboard players operation @s turretStore = @s turretTimer

execute store result score @s turretDis run scoreboard players operation @s turretStore /= #ticks constant

## Angel

scoreboard players operation @s hSpellStore = @s healSpell

execute store result score @s hSpellDis run scoreboard players operation @s hSpellStore /= #ticks constant

scoreboard players operation @s oSpellStore = @s HealerItems

execute store result score @s oSpellDis run scoreboard players operation @s oSpellStore /= #ticks constant

scoreboard players operation @s RegenStaffStore = @s RegenTimer

execute store result score @s RegenStaffDis run scoreboard players operation @s RegenStaffStore /= #ticks constant

scoreboard players operation @s angelicBlessingStore = @s angelicBlessingTimer

execute store result score @s angelicBlessingDis run scoreboard players operation @s angelicBlessingStore /= #ticks constant

## Archer

scoreboard players operation @s glowingStore = @s glowingEffectCD

execute store result score @s glowingDis run scoreboard players operation @s glowingStore /= #ticks constant

## Wizard

scoreboard players operation @s lightningStaffStore = @s LightningTimer

execute store result score @s lightningStaffDis run scoreboard players operation @s lightningStaffStore /= #lightningstaffcd constant

scoreboard players operation @s fireballStore = @s FireballTimer

execute store result score @s fireballDis run scoreboard players operation @s fireballStore /= #ticks constant

scoreboard players operation @s expBombStore = @s expBombTimer

execute store result score @s expBombDis run scoreboard players operation @s expBombStore /= #ticks constant

scoreboard players operation @s ejectStore = @s ejectTimer

execute store result score @s ejectDis run scoreboard players operation @s ejectStore /= #ticks constant

scoreboard players operation @s witherStore = @s witherTimer

execute store result score @s witherDis run scoreboard players operation @s witherStore /= #ticks constant

## Pirate

scoreboard players operation @s fakeStore = @s fakeTimer

execute store result score @s fakeDis run scoreboard players operation @s fakeStore /= #ticks constant

scoreboard players operation @s blunderStore = @s blunderTimer

execute store result score @s blunderDis run scoreboard players operation @s blunderStore /= #ticks constant

scoreboard players operation @s coinGunStore = @s coinGunTimer

execute store result score @s coinGunDis run scoreboard players operation @s coinGunStore /= #ticks constant

scoreboard players operation @s cHookStore = @s cHookCD

execute store result score @s cHookDis run scoreboard players operation @s cHookStore /= #ticks constant

## Ent

scoreboard players operation @s hFruitStore = @s hFruitTimer

execute store result score @s hFruitDis run scoreboard players operation @s hFruitStore /= #ticks constant

scoreboard players operation @s blossomStore = @s blossomTimer

execute store result score @s blossomDis run scoreboard players operation @s blossomStore /= #ticks constant

scoreboard players operation @s rootingStore = @s rootingTimer

execute store result score @s rootingDis run scoreboard players operation @s rootingStore /= #ticks constant

## Poseidon

scoreboard players operation @s lightningStore = @s poseidonPassive

execute store result score @s lightningDis run scoreboard players operation @s lightningStore /= #ticks constant

scoreboard players operation @s fishCannonStore = @s fishCannonTimer

execute store result score @s fishCannonDis run scoreboard players operation @s fishCannonStore /= #ticks constant

scoreboard players operation @s squidzookaStore = @s squidzookaTimer

execute store result score @s squidzookaDis run scoreboard players operation @s squidzookaStore /= #ticks constant

## Chef

scoreboard players operation @s basketStore = @s basketTimer

execute store result score @s basketDis run scoreboard players operation @s basketStore /= #ticks constant

scoreboard players operation @s scrambleStore = @s scrambleTimer

execute store result score @s scrambleDis run scoreboard players operation @s scrambleStore /= #ticks constant

scoreboard players operation @s payRaiseStore = @s payRaiseTimer

execute store result score @s payRaiseDis run scoreboard players operation @s payRaiseStore /= #ticks constant

## Dragon

scoreboard players operation @s dRageStore = @s dragonRageTimer

execute store result score @s dRageDis run scoreboard players operation @s dRageStore /= #ticks constant

scoreboard players operation @s dRushStore = @s dragonRushTimer

execute store result score @s dRushDis run scoreboard players operation @s dRushStore /= #ticks constant

scoreboard players operation @s cCannonStore = @s cCannonTimer

execute store result score @s cCannonDis run scoreboard players operation @s cCannonStore /= #ticks constant

## Gambler

scoreboard players operation @s pCardStore = @s pCardsTimer

execute store result score @s pCardDis run scoreboard players operation @s pCardStore /= #ticks constant

scoreboard players operation @s rouletteStore = @s rouletteTimer

execute store result score @s rouletteDis run scoreboard players operation @s rouletteStore /= #ticks constant

scoreboard players operation @s coinGunStore = @s coinGunTimer

execute store result score @s coinGunDis run scoreboard players operation @s coinGunStore /= #ticks constant

## Astronaut

scoreboard players operation @s asteroidStore = @s asteroidTimer

execute store result score @s asteroidDis run scoreboard players operation @s asteroidStore /= #ticks constant

scoreboard players operation @s wrenchStore = @s wrenchTimer

execute store result score @s wrenchDis run scoreboard players operation @s wrenchStore /= #ticks constant

scoreboard players operation @s astroPassStore = @s astroPassTimer

execute store result score @s astroPassDis run scoreboard players operation @s astroPassStore /= #ticks constant

scoreboard players operation @s debrisStore = @s debrisTimer

execute store result score @s debrisDis run scoreboard players operation @s debrisStore /= #ticks constant

scoreboard players operation @s gravityStore = @s gravityTimer

execute store result score @s gravityDis run scoreboard players operation @s gravityStore /= #ticks constant

## Firecracker

scoreboard players operation @s sparklerStore = @s sparklerTimer

execute store result score @s sparklerDis run scoreboard players operation @s sparklerStore /= #ticks constant

scoreboard players operation @s blazingSpeedStore = @s blazingSpeedTimer

execute store result score @s blazingSpeedDis run scoreboard players operation @s blazingSpeedStore /= #ticks constant

scoreboard players operation @s napalmBucketStore = @s napalmBucketTimer

execute store result score @s napalmBucketDis run scoreboard players operation @s napalmBucketStore /= #ticks constant

scoreboard players operation @s pyromaniaStore = @s pyromaniaTimer

execute store result score @s pyromaniaDis run scoreboard players operation @s pyromaniaStore /= #ticks constant

## School Nurse

scoreboard players operation @s ivDripStore = @s ivDripTimer

execute store result score @s ivDripDis run scoreboard players operation @s ivDripStore /= #ticks constant

scoreboard players operation @s icePackStore = @s icePackTimer

execute store result score @s icePackDis run scoreboard players operation @s icePackStore /= #ticks constant

scoreboard players operation @s defibrillatorStore = @s defibrillatorTimer

execute store result score @s defibrillatorDis run scoreboard players operation @s defibrillatorStore /= #ticks constant

## Necromancer

scoreboard players operation @s necroStaffStore = @s necroStaffTimer

execute store result score @s necroStaffDis run scoreboard players operation @s necroStaffStore /= #ticks constant

scoreboard players operation @s reanimationStore = @s reanimationTimer

execute store result score @s reanimationDis run scoreboard players operation @s reanimationStore /= #ticks constant

scoreboard players operation @s boneShieldStore = @s boneShieldTimer

execute store result score @s boneShieldDis run scoreboard players operation @s boneShieldStore /= #ticks constant

scoreboard players operation @s undeadWhistleStore = @s undeadWhistleTimer

execute store result score @s undeadWhistleDis run scoreboard players operation @s undeadWhistleStore /= #ticks constant

scoreboard players operation @s vengeanceStore = @s vengeanceTimer

execute store result score @s vengeanceDis run scoreboard players operation @s vengeanceStore /= #ticks constant

scoreboard players operation @s darkWarpStore = @s darkWarpTimer

execute store result score @s darkWarpDis run scoreboard players operation @s darkWarpStore /= #ticks constant

# Show in actionbar
function pdb:get_me
function commands:cooldowns/display_cooldown_data with storage pdb:main out