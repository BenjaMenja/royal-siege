execute run scoreboard players operation @s necroStaffStore = @s necroStaffTimer

execute store result score @s necroStaffDis run scoreboard players operation @s necroStaffStore /= #ticks constant

scoreboard players operation @s reanimationStore = @s reanimationTimer

execute store result score @s reanimationDis run scoreboard players operation @s reanimationStore /= #ticks constant

scoreboard players operation @s boneShieldStore = @s boneShieldTimer

execute store result score @s boneShieldDis run scoreboard players operation @s boneShieldStore /= #ticks constant

scoreboard players operation @s undeadWhistleStore = @s undeadWhistleTimer

execute store result score @s undeadWhistleDis run scoreboard players operation @s undeadWhistleStore /= #ticks constant

scoreboard players operation @s vengeanceStore = @s vengeanceTimer

execute store result score @s vengeanceDis run scoreboard players operation @s vengeanceStore /= #ticks constant

scoreboard players operation @s darkWarpStore = @s darkWarpTimer

execute store result score @s darkWarpDis run scoreboard players operation @s darkWarpStore /= #ticks constant

title @s[predicate=!commands:inventory/undead_whistle,predicate=!commands:inventory/vengeance,predicate=!commands:inventory/dark_warp] actionbar [{"text":"Necro Staff: ","color":"green"},{"score":{"name":"*","objective":"necroStaffDis"},"color":"aqua"},{"text":"   Reanimation: ","color":"green"},{"score":{"name":"*","objective":"reanimationDis"},"color":"aqua"},{"text":"   Bone Shield: ","color":"green"},{"score":{"name":"*","objective":"boneShieldDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/undead_whistle,predicate=!commands:inventory/vengeance,predicate=!commands:inventory/dark_warp] actionbar [{"text":"Necro Staff: ","color":"green"},{"score":{"name":"*","objective":"necroStaffDis"},"color":"aqua"},{"text":"   Reanimation: ","color":"green"},{"score":{"name":"*","objective":"reanimationDis"},"color":"aqua"},{"text":"   Bone Shield: ","color":"green"},{"score":{"name":"*","objective":"boneShieldDis"},"color":"aqua"},{"text":"   Undead Whistle: ","color":"green"},{"score":{"name":"*","objective":"undeadWhistleDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/undead_whistle,predicate=commands:inventory/vengeance,predicate=!commands:inventory/dark_warp] actionbar [{"text":"Necro Staff: ","color":"green"},{"score":{"name":"*","objective":"necroStaffDis"},"color":"aqua"},{"text":"   Reanimation: ","color":"green"},{"score":{"name":"*","objective":"reanimationDis"},"color":"aqua"},{"text":"   Bone Shield: ","color":"green"},{"score":{"name":"*","objective":"boneShieldDis"},"color":"aqua"},{"text":"   Vengeance: ","color":"green"},{"score":{"name":"*","objective":"vengeanceDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/undead_whistle,predicate=!commands:inventory/vengeance,predicate=commands:inventory/dark_warp] actionbar [{"text":"Necro Staff: ","color":"green"},{"score":{"name":"*","objective":"necroStaffDis"},"color":"aqua"},{"text":"   Reanimation: ","color":"green"},{"score":{"name":"*","objective":"reanimationDis"},"color":"aqua"},{"text":"   Bone Shield: ","color":"green"},{"score":{"name":"*","objective":"boneShieldDis"},"color":"aqua"},{"text":"   Dark Warp: ","color":"green"},{"score":{"name":"*","objective":"darkWarpDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/undead_whistle,predicate=commands:inventory/vengeance,predicate=!commands:inventory/dark_warp] actionbar [{"text":"Necro Staff: ","color":"green"},{"score":{"name":"*","objective":"necroStaffDis"},"color":"aqua"},{"text":"   Reanimation: ","color":"green"},{"score":{"name":"*","objective":"reanimationDis"},"color":"aqua"},{"text":"   Bone Shield: ","color":"green"},{"score":{"name":"*","objective":"boneShieldDis"},"color":"aqua"},{"text":"   Undead Whistle: ","color":"green"},{"score":{"name":"*","objective":"undeadWhistleDis"},"color":"aqua"},{"text":"   Vengeance: ","color":"green"},{"score":{"name":"*","objective":"vengeanceDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/undead_whistle,predicate=!commands:inventory/vengeance,predicate=commands:inventory/dark_warp] actionbar [{"text":"Necro Staff: ","color":"green"},{"score":{"name":"*","objective":"necroStaffDis"},"color":"aqua"},{"text":"   Reanimation: ","color":"green"},{"score":{"name":"*","objective":"reanimationDis"},"color":"aqua"},{"text":"   Bone Shield: ","color":"green"},{"score":{"name":"*","objective":"boneShieldDis"},"color":"aqua"},{"text":"   Undead Whistle: ","color":"green"},{"score":{"name":"*","objective":"undeadWhistleDis"},"color":"aqua"},{"text":"   Dark Warp: ","color":"green"},{"score":{"name":"*","objective":"darkWarpDis"},"color":"aqua"}]

title @s[predicate=!commands:inventory/undead_whistle,predicate=commands:inventory/vengeance,predicate=commands:inventory/dark_warp] actionbar [{"text":"Necro Staff: ","color":"green"},{"score":{"name":"*","objective":"necroStaffDis"},"color":"aqua"},{"text":"   Reanimation: ","color":"green"},{"score":{"name":"*","objective":"reanimationDis"},"color":"aqua"},{"text":"   Bone Shield: ","color":"green"},{"score":{"name":"*","objective":"boneShieldDis"},"color":"aqua"},{"text":"   Vengeance: ","color":"green"},{"score":{"name":"*","objective":"vengeanceDis"},"color":"aqua"},{"text":"   Dark Warp: ","color":"green"},{"score":{"name":"*","objective":"darkWarpDis"},"color":"aqua"}]

title @s[predicate=commands:inventory/undead_whistle,predicate=commands:inventory/vengeance,predicate=commands:inventory/dark_warp] actionbar [{"text":"Necro Staff: ","color":"green"},{"score":{"name":"*","objective":"necroStaffDis"},"color":"aqua"},{"text":"   Reanimation: ","color":"green"},{"score":{"name":"*","objective":"reanimationDis"},"color":"aqua"},{"text":"   Bone Shield: ","color":"green"},{"score":{"name":"*","objective":"boneShieldDis"},"color":"aqua"},{"text":"   Undead Whistle: ","color":"green"},{"score":{"name":"*","objective":"undeadWhistleDis"},"color":"aqua"},{"text":"   Vengeance: ","color":"green"},{"score":{"name":"*","objective":"vengeanceDis"},"color":"aqua"},{"text":"   Dark Warp: ","color":"green"},{"score":{"name":"*","objective":"darkWarpDis"},"color":"aqua"}]
