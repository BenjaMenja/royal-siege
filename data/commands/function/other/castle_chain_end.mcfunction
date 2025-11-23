fill 7 68 -164 7 68 -100 air replace iron_chain

fill 11 68 -164 11 68 -100 air replace iron_chain

fill 29 59 -1986 29 59 -1956 air replace iron_chain

fill 9 59 -1986 9 59 -1956 air replace iron_chain

tellraw @a {"text":"The castle chain faded away...","color":"aqua"}

tag @s remove castleChain

scoreboard players reset @s castleChain