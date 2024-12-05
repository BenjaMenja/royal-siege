tag @s remove protected
scoreboard players set @s c.heal 80000
function custom_heal:apply_heal
advancement revoke @s only commands:barrier_take