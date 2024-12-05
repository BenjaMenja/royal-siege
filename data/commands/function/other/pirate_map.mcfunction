execute as @e[type=interaction,tag=mortar] if data entity @s interaction.player at @s run function commands:other/mortar_shot

execute if block 7 62 -2003 minecraft:lever[powered=false] if block 7 62 -2006 minecraft:lever[powered=true] if block 7 62 -2012 minecraft:lever[powered=false] if block 7 62 -2015 minecraft:lever[powered=true] if block 7 62 -2021 minecraft:lever[powered=true] if block 7 62 -2024 minecraft:lever[powered=false] if block 7 62 -2030 minecraft:lever[powered=true] if block 7 62 -2033 minecraft:lever[powered=false] if block 31 62 -2003 minecraft:lever[powered=false] if block 31 62 -2006 minecraft:lever[powered=false] if block 31 62 -2012 minecraft:lever[powered=true] if block 31 62 -2015 minecraft:lever[powered=true] if block 31 62 -2021 minecraft:lever[powered=false] if block 31 62 -2024 minecraft:lever[powered=true] if block 31 62 -2030 minecraft:lever[powered=true] if block 31 62 -2033 minecraft:lever[powered=false] run advancement grant @a[predicate=commands:in_colliding_tides] only commands:hidden_advancements/pirates_treasure

execute if block 7 62 -1939 minecraft:lever[powered=false] if block 7 62 -1936 minecraft:lever[powered=false] if block 7 62 -1930 minecraft:lever[powered=true] if block 7 62 -1927 minecraft:lever[powered=false] if block 7 62 -1921 minecraft:lever[powered=true] if block 7 62 -1918 minecraft:lever[powered=true] if block 7 62 -1912 minecraft:lever[powered=true] if block 7 62 -1909 minecraft:lever[powered=false] if block 31 62 -1939 minecraft:lever[powered=true] if block 31 62 -1936 minecraft:lever[powered=true] if block 31 62 -1930 minecraft:lever[powered=true] if block 31 62 -1927 minecraft:lever[powered=true] if block 31 62 -1921 minecraft:lever[powered=false] if block 31 62 -1918 minecraft:lever[powered=false] if block 31 62 -1912 minecraft:lever[powered=false] if block 31 62 -1909 minecraft:lever[powered=true] run advancement grant @a[predicate=commands:in_colliding_tides] only commands:hidden_advancements/pirates_treasure

execute as @a[predicate=commands:in_any_colliding_tides_shrink_spot,tag=!CT_Shrunk] run attribute @s scale modifier add 18-0-50-0-0 -0.5 add_value

execute as @a[predicate=commands:in_any_colliding_tides_shrink_spot,tag=!CT_Shrunk] run tag @s add CT_Shrunk

execute as @a[tag=CT_Shrunk] at @s if block ~ ~1 ~ air run attribute @s scale modifier remove 18-0-50-0-0 

execute as @a[tag=CT_Shrunk] at @s if block ~ ~1 ~ air run tag @s remove CT_Shrunk
