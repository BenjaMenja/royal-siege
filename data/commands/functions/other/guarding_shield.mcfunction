execute as @a[advancements={commands:guarding_shield=true},team=Red,nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]}] at @s run effect give @a[team=Red,distance=..8] resistance 5 0

execute as @a[advancements={commands:guarding_shield=true},team=Red,nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]}] at @s run effect give @a[team=Red,distance=..8] speed 5 0

execute as @a[advancements={commands:guarding_shield=true},team=Blue,nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]}] at @s run effect give @a[team=Blue,distance=..8] resistance 5 0

execute as @a[advancements={commands:guarding_shield=true},team=Blue,nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]}] at @s run effect give @a[team=Blue,distance=..8] speed 5 0

advancement revoke @a[advancements={commands:guarding_shield=true},team=Red,nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]}] only commands:guarding_shield

advancement revoke @a[advancements={commands:guarding_shield=true},team=Blue,nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]}] only commands:guarding_shield