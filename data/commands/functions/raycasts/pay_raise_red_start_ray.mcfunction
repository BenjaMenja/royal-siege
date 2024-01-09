tag @s add payraise
scoreboard players set #hit ray.payRaise 0
scoreboard players set #distance ray.payRaise 0
function commands:raycasts/pay_raise_red_ray
scoreboard players set @a[tag=payraise] payRaiseTimer 300
execute if score #distance ray.payRaise matches 150.. run scoreboard players set @s payRaiseTimer 100
tag @s remove payraise