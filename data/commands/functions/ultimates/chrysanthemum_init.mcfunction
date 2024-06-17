summon minecraft:snowball ~ ~ ~ {Motion:[0.0,1.1,0.0],Tags:["chrysanthemumlauncher","snowball"],Item:{id:"minecraft:air",count:1}}

tag @s add chrysanthemumLaunch

ride @s mount @e[type=snowball,tag=chrysanthemumlauncher,limit=1,sort=nearest]

tellraw @a [{"selector":"@s"},{"text":" is preparing for the grand finale!"}]