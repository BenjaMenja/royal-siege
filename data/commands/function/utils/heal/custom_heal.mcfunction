
$function commands:utils/heal/check_healing_done {health:$(health)}
$execute as $(ult_charge_receiver) run function commands:ultimates/ult_charge/healing_ult_charge
$scoreboard players set @s c.heal $(health)
scoreboard players operation @s c.heal *= #10000 constant
function custom_heal:apply_heal