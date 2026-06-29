data modify storage royalsiege:settings temp_value set from storage royalsiege:settings DeathCounter

execute if data storage royalsiege:settings {temp_value:1} run data modify storage royalsiege:settings DeathCounter set value 0
execute if data storage royalsiege:settings {temp_value:1} run data modify storage royalsiege:settings Dialog.actions[3].label[1].color set value "red"
execute if data storage royalsiege:settings {temp_value:1} run data modify storage royalsiege:settings Dialog.actions[3].label[1].text set value "Disabled"

execute if data storage royalsiege:settings {temp_value:0} run data modify storage royalsiege:settings DeathCounter set value 1
execute if data storage royalsiege:settings {temp_value:0} run data modify storage royalsiege:settings Dialog.actions[3].label[1].color set value "green"
execute if data storage royalsiege:settings {temp_value:0} run data modify storage royalsiege:settings Dialog.actions[3].label[1].text set value "Enabled"

function commands:dialog/refresh_dialog_generic with storage royalsiege:settings