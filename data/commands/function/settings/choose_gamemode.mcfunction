data modify storage royalsiege:settings temp_value set from storage royalsiege:settings Gamemode

execute if data storage royalsiege:settings {temp_value:1} run data modify storage royalsiege:settings Gamemode set value 0
execute if data storage royalsiege:settings {temp_value:1} run data modify storage royalsiege:settings Dialog.actions[4].label[1].color set value "green"
execute if data storage royalsiege:settings {temp_value:1} run data modify storage royalsiege:settings Dialog.actions[4].label[1].text set value "Classic"

execute if data storage royalsiege:settings {temp_value:0} run data modify storage royalsiege:settings Gamemode set value 1
execute if data storage royalsiege:settings {temp_value:0} run data modify storage royalsiege:settings Dialog.actions[4].label[1].color set value "red"
execute if data storage royalsiege:settings {temp_value:0} run data modify storage royalsiege:settings Dialog.actions[4].label[1].text set value "Team Deathmatch"

function commands:dialog/refresh_dialog_generic with storage royalsiege:settings