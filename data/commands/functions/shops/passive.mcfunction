tag @s add purchase

execute if entity @s[tag=purchase,tag=upgraded] run tellraw @s {"text":"You've already upgraded your passive!","color":"red"}

execute if entity @s[tag=purchase,tag=!upgraded,scores={Money=2000..}] unless score @s Kit matches 7 unless score @s Kit matches 12 run tellraw @s {"text":"You've upgraded your passive!","color":"green"}

execute if entity @s[tag=purchase,tag=!upgraded,scores={Money=3000..}] if score @s Kit matches 7 run tellraw @s {"text":"You've upgraded your passive!","color":"green"}

execute if entity @s[tag=purchase,tag=!upgraded,scores={Money=1500..}] if score @s Kit matches 12 run tellraw @s {"text":"You've upgraded your passive!","color":"green"}

execute as @a[tag=purchase,scores={Money=2000..},tag=!upgraded] unless score @s Kit matches 7 unless score @s Kit matches 12 run function commands:shops/passive2

execute as @a[tag=purchase,scores={Money=3000..},tag=!upgraded] if score @s Kit matches 7 run function commands:shops/passive2

execute as @a[tag=purchase,scores={Money=1500..},tag=!upgraded] if score @s Kit matches 12 run function commands:shops/passive2

tag @s remove purchase