scoreboard players set @a[advancements={commands:stasis_bullet=true}] RSAttr.Rooted 60

execute as @a[advancements={commands:stasis_bullet=true}] run function commands:attributes/adds/add_rooted

execute at @a[advancements={commands:stasis_bullet=true}] run summon lightning_bolt

advancement revoke @a[advancements={commands:stasis_bullet=true}] only commands:stasis_bullet

