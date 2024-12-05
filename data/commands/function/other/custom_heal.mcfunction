
$function commands:other/check_healing_done {health:$(health)}
$execute as $(ult_charge_receiver) run function commands:other/healing_ult_charge
$scoreboard players set @s c.heal $(health)
scoreboard players operation @s c.heal *= #10000 constant
function custom_heal:apply_heal