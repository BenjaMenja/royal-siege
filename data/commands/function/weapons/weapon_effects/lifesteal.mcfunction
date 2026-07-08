scoreboard players set @a[advancements={commands:lifesteal=true}] c.heal 40000

execute as @a[advancements={commands:lifesteal=true}] run function custom_heal:apply_heal

advancement revoke @a[advancements={commands:lifesteal=true}] only commands:lifesteal