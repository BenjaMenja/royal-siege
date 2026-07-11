data remove storage royalsiege:temporary_storage activeHotbar
data remove storage royalsiege:temporary_storage activeHotbarSuccess

$execute store success storage royalsiege:temporary_storage activeHotbarSuccess int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":$(custom_data)}}].Slot

$execute if data storage royalsiege:temporary_storage {activeHotbarSuccess:0} if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":$(custom_data)}}}} run function commands:replace/generic_ability_ready_offhand

$execute if data storage royalsiege:temporary_storage {activeHotbarSuccess:1} store result storage royalsiege:temporary_storage activeHotbar int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":$(custom_data)}}].Slot

execute if data storage royalsiege:temporary_storage {activeHotbarSuccess:1} run function commands:replace/generic_ability_ready with storage royalsiege:temporary_storage