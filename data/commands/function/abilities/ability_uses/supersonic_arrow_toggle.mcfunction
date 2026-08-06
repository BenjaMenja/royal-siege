execute store success score @s supersonicArrowToggle unless score @s supersonicArrowToggle matches 1

execute if score @s supersonicArrowToggle matches 1 run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.6 1.5

execute if score @s supersonicArrowToggle matches 1 run function commands:replace/generic_enchant_check {custom_data:{archerbow:1b},enchant_modifier:"supersonic_arrow_enchant"}

execute if score @s supersonicArrowToggle matches 0 run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.6 0.5

execute if score @s supersonicArrowToggle matches 0 run function commands:replace/generic_enchant_check {custom_data:{archerbow:1b},enchant_modifier:"supersonic_arrow_enchant_remove"}