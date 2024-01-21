scoreboard players operation @s sparklerStore = @s sparklerTimer

execute store result score @s sparklerDis run scoreboard players operation @s sparklerStore /= #ticks constant

scoreboard players operation @s blazingSpeedStore = @s blazingSpeedTimer

execute store result score @s blazingSpeedDis run scoreboard players operation @s blazingSpeedStore /= #ticks constant

scoreboard players operation @s napalmBucketStore = @s napalmBucketTimer

execute store result score @s napalmBucketDis run scoreboard players operation @s napalmBucketStore /= #ticks constant

scoreboard players operation @s pyromaniaStore = @s pyromaniaTimer

execute store result score @s pyromaniaDis run scoreboard players operation @s pyromaniaStore /= #ticks constant

title @s[predicate=!commands:inventory/napalm_bucket,predicate=!commands:inventory/pyromania] actionbar [{"text":"Sparkler: ","color":"green"},{"score":{"name":"*","objective":"sparklerDis"},"color":"aqua"},{"text":"   Blazing Speed: ","color":"green"},{"score":{"name":"*","objective":"blazingSpeedDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/napalm_bucket,predicate=!commands:inventory/pyromania] actionbar [{"text":"Sparkler: ","color":"green"},{"score":{"name":"*","objective":"sparklerDis"},"color":"aqua"},{"text":"   Blazing Speed: ","color":"green"},{"score":{"name":"*","objective":"blazingSpeedDis"},"color":"aqua"},{"text":"   Napalm Bucket: ","color":"green"},{"score":{"name":"*","objective":"napalmBucketDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/napalm_bucket,predicate=commands:inventory/pyromania] actionbar [{"text":"Sparkler: ","color":"green"},{"score":{"name":"*","objective":"sparklerDis"},"color":"aqua"},{"text":"   Blazing Speed: ","color":"green"},{"score":{"name":"*","objective":"blazingSpeedDis"},"color":"aqua"},{"text":"   Pyromania: ","color":"green"},{"score":{"name":"*","objective":"pyromaniaDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/napalm_bucket,predicate=commands:inventory/pyromania] actionbar [{"text":"Sparkler: ","color":"green"},{"score":{"name":"*","objective":"sparklerDis"},"color":"aqua"},{"text":"   Blazing Speed: ","color":"green"},{"score":{"name":"*","objective":"blazingSpeedDis"},"color":"aqua"},{"text":"   Napalm Bucket: ","color":"green"},{"score":{"name":"*","objective":"napalmBucketDis"},"color":"aqua"},{"text":"   Pyromania: ","color":"green"},{"score":{"name":"*","objective":"pyromaniaDis"},"color":"aqua"}]