execute store success score @s exChargeToggle unless score @s exChargeToggle matches 1

execute if score @s exChargeToggle matches 1 run item modify entity @s weapon.mainhand commands:show_enchant_glint

execute if score @s exChargeToggle matches 1 run playsound entity.blaze.shoot master @s ~ ~ ~ 0.5 1.5

execute if score @s exChargeToggle matches 0 run item modify entity @s weapon.mainhand commands:hide_enchant_glint

execute if score @s exChargeToggle matches 0 run playsound block.fire.extinguish master @s ~ ~ ~ 0.5 1.5