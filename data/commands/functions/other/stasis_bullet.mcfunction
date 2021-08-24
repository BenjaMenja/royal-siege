effect give @a[advancements={commands:stasis_bullet=true}] slowness 3 11 true

effect give @a[advancements={commands:stasis_bullet=true}] jump_boost 3 129 true

execute at @a[advancements={commands:stasis_bullet=true}] run summon lightning_bolt

advancement revoke @a[advancements={commands:stasis_bullet=true}] only commands:stasis_bullet

