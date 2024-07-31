effect clear @a[advancements={commands:toxin_bullet=true}] regeneration

execute as @a[advancements={commands:toxin_bullet=true}] run function #commands:clear_health_boost_attributes

effect clear @a[advancements={commands:toxin_bullet=true}] absorption

effect give @a[advancements={commands:toxin_bullet=true}] instant_damage 1 0

advancement revoke @a[advancements={commands:toxin_bullet=true}] only commands:toxin_bullet