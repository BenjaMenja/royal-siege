
data remove storage royalsiege:temporary_storage cooldown_items[-1]

execute if data storage royalsiege:temporary_storage cooldown_items[-1] run function commands:cooldowns/populate_cooldown_list_macro with storage royalsiege:temporary_storage cooldown_items[-1]

$data modify storage royalsiege:temporary_storage cur_cooldown_item set value $(components)
data modify storage pdb:main in.cooldown_data append from storage royalsiege:temporary_storage cur_cooldown_item."minecraft:custom_data".cooldown_name
data modify storage pdb:main in.cooldown_data append from storage royalsiege:temporary_storage cur_cooldown_item."minecraft:custom_data".cooldown_score
data modify storage pdb:main in.cooldown_data append value {"text": "   "}
data remove storage royalsiege:temporary_storage cur_cooldown_item