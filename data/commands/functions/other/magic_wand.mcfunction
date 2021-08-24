execute as @a[team=Red,advancements={commands:magic_wand=true},nbt={SelectedItem:{id:"minecraft:stick",tag:{Enchantments:[{id:"minecraft:lure",lvl:3s}]}}}] at @s run effect give @a[team=Red,distance=..10] regeneration 7 1

execute as @a[team=Blue,advancements={commands:magic_wand=true},nbt={SelectedItem:{id:"minecraft:stick",tag:{Enchantments:[{id:"minecraft:lure",lvl:3s}]}}}] at @s run effect give @a[team=Blue,distance=..10] regeneration 7 1

advancement revoke @a[advancements={commands:magic_wand=true}] only commands:magic_wand