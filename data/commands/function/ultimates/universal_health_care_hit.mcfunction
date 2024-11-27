advancement revoke @s only commands:universal_health_care_hit

execute at @s run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~ ~ 0.25 0.25 0.25 1 4

scoreboard players set @s c.heal 20000

function custom_heal:apply_heal