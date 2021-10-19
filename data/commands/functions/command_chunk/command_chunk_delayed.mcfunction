tag @a[tag=!notAlive,nbt={Inventory:[{tag:{ultimateitem:1b}}]}] add ultimateInv

tag @a[tag=!notAlive,nbt=!{Inventory:[{tag:{ultimateitem:1b}}]}] remove ultimateInv

execute if entity @a[predicate=commands:in_any_battlefield] run schedule function commands:command_chunk/command_chunk_delayed 5t