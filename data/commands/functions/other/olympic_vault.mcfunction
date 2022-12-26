tp @s @s

tp @s ~ ~1.5 ~

effect give @s resistance 1 3 true

summon creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:1,ignited:1b,Tags:["olympicVault"]}

scoreboard players set @s olympicVaultTimer 300

tag @s add olympicVault