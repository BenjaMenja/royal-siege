$data modify storage royalsiege:settings Maps.Classic.value set value $(value)

execute if data storage royalsiege:settings {Maps:{Classic:{value:0}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[0].label[1].color set value "green"
execute if data storage royalsiege:settings {Maps:{Classic:{value:0}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[0].label[1].text set value "Active"
execute if data storage royalsiege:settings {Maps:{Classic:{value:0}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[1].label[1].color set value "red"
execute if data storage royalsiege:settings {Maps:{Classic:{value:0}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[1].label[1].text set value "Inactive"
execute if data storage royalsiege:settings {Maps:{Classic:{value:0}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[2].label[1].color set value "red"
execute if data storage royalsiege:settings {Maps:{Classic:{value:0}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[2].label[1].text set value "Inactive"

execute if data storage royalsiege:settings {Maps:{Classic:{value:1}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[0].label[1].color set value "red"
execute if data storage royalsiege:settings {Maps:{Classic:{value:1}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[0].label[1].text set value "Inactive"
execute if data storage royalsiege:settings {Maps:{Classic:{value:1}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[1].label[1].color set value "green"
execute if data storage royalsiege:settings {Maps:{Classic:{value:1}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[1].label[1].text set value "Active"
execute if data storage royalsiege:settings {Maps:{Classic:{value:1}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[2].label[1].color set value "red"
execute if data storage royalsiege:settings {Maps:{Classic:{value:1}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[2].label[1].text set value "Inactive"

execute if data storage royalsiege:settings {Maps:{Classic:{value:2}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[0].label[1].color set value "red"
execute if data storage royalsiege:settings {Maps:{Classic:{value:2}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[0].label[1].text set value "Inactive"
execute if data storage royalsiege:settings {Maps:{Classic:{value:2}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[1].label[1].color set value "red"
execute if data storage royalsiege:settings {Maps:{Classic:{value:2}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[1].label[1].text set value "Inactive"
execute if data storage royalsiege:settings {Maps:{Classic:{value:2}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[2].label[1].color set value "green"
execute if data storage royalsiege:settings {Maps:{Classic:{value:2}}} run data modify storage royalsiege:settings Maps.Classic.Dialog.actions[2].label[1].text set value "Active"

function commands:dialog/refresh_dialog_generic with storage royalsiege:settings Maps.Classic