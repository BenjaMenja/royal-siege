$data modify storage royalsiege:settings Maps.TDM.value set value $(value)

execute if data storage royalsiege:settings {Maps:{TDM:{value:0}}} run data modify storage royalsiege:settings Maps.TDM.Dialog.actions[0].label[1].color set value "green"
execute if data storage royalsiege:settings {Maps:{TDM:{value:0}}} run data modify storage royalsiege:settings Maps.TDM.Dialog.actions[0].label[1].text set value "Active"
execute if data storage royalsiege:settings {Maps:{TDM:{value:0}}} run data modify storage royalsiege:settings Maps.TDM.Dialog.actions[1].label[1].color set value "red"
execute if data storage royalsiege:settings {Maps:{TDM:{value:0}}} run data modify storage royalsiege:settings Maps.TDM.Dialog.actions[1].label[1].text set value "Inactive"

execute if data storage royalsiege:settings {Maps:{TDM:{value:1}}} run data modify storage royalsiege:settings Maps.TDM.Dialog.actions[0].label[1].color set value "red"
execute if data storage royalsiege:settings {Maps:{TDM:{value:1}}} run data modify storage royalsiege:settings Maps.TDM.Dialog.actions[0].label[1].text set value "Inactive"
execute if data storage royalsiege:settings {Maps:{TDM:{value:1}}} run data modify storage royalsiege:settings Maps.TDM.Dialog.actions[1].label[1].color set value "green"
execute if data storage royalsiege:settings {Maps:{TDM:{value:1}}} run data modify storage royalsiege:settings Maps.TDM.Dialog.actions[1].label[1].text set value "Active"

function commands:dialog/refresh_dialog_generic with storage royalsiege:settings Maps.TDM