data modify storage royalsiege:settings temp_value set from storage royalsiege:settings Nighttime

execute if data storage royalsiege:settings {temp_value:1} run data modify storage royalsiege:settings Nighttime set value 0
execute if data storage royalsiege:settings {temp_value:1} run data modify storage royalsiege:settings Dialog.actions[0].label[1].color set value "yellow"
execute if data storage royalsiege:settings {temp_value:1} run data modify storage royalsiege:settings Dialog.actions[0].label[1].text set value "Daytime"

execute if data storage royalsiege:settings {temp_value:0} run data modify storage royalsiege:settings Nighttime set value 1
execute if data storage royalsiege:settings {temp_value:0} run data modify storage royalsiege:settings Dialog.actions[0].label[1].color set value "dark_gray"
execute if data storage royalsiege:settings {temp_value:0} run data modify storage royalsiege:settings Dialog.actions[0].label[1].text set value "Nighttime"

function commands:dialog/refresh_dialog_generic with storage royalsiege:settings