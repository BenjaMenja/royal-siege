function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out
data modify storage pdb:main in.cooldown_data set value []
function pdb:save_me