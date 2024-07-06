execute as @a[scores={Kit=2}] run scoreboard players operation @s smokeStore = @s NinjaItems

execute as @a[scores={Kit=2}] store result score @s smokeDis run scoreboard players operation @s smokeStore /= #ticks constant

execute as @a[scores={Kit=2}] run scoreboard players operation @s shurikenStore = @s shurikenTimer

execute as @a[scores={Kit=2}] store result score @s shurikenDis run scoreboard players operation @s shurikenStore /= #ticks constant

title @a[scores={Kit=2,dashcharge=..119},tag=!upgraded] actionbar [{"text":"Number of Dashes:","color":"green"},{"text":" 0   ","color":"gold"},{"text":"Smoke Bomb: ","color":"green"},{"score":{"name":"*","objective":"smokeDis"},"color":"aqua"},{"text":"    Shuriken: ","color":"green"},{"score":{"name":"*","objective":"shurikenDis"},"color":"aqua"}]

title @a[scores={Kit=2,dashcharge=120..240},tag=!upgraded] actionbar [{"text":"Number of Dashes:","color":"green"},{"text":" 1   ","color":"gold"},{"text":"Smoke Bomb: ","color":"green"},{"score":{"name":"*","objective":"smokeDis"},"color":"aqua"},{"text":"    Shuriken: ","color":"green"},{"score":{"name":"*","objective":"shurikenDis"},"color":"aqua"}]

title @a[scores={Kit=2,dashcharge=240..360},tag=!upgraded] actionbar [{"text":"Number of Dashes:","color":"green"},{"text":" 2   ","color":"gold"},{"text":"Smoke Bomb: ","color":"green"},{"score":{"name":"*","objective":"smokeDis"},"color":"aqua"},{"text":"    Shuriken: ","color":"green"},{"score":{"name":"*","objective":"shurikenDis"},"color":"aqua"}]

title @a[scores={Kit=2,dashcharge=361..},tag=!upgraded] actionbar [{"text":"Number of Dashes:","color":"green"},{"text":" 3   ","color":"gold"},{"text":"Smoke Bomb: ","color":"green"},{"score":{"name":"*","objective":"smokeDis"},"color":"aqua"},{"text":"    Shuriken: ","color":"green"},{"score":{"name":"*","objective":"shurikenDis"},"color":"aqua"}]

title @a[scores={Kit=2,dashcharge=..99},tag=upgraded] actionbar [{"text":"Number of Dashes:","color":"green"},{"text":" 0   ","color":"gold"},{"text":"Smoke Bomb: ","color":"green"},{"score":{"name":"*","objective":"smokeDis"},"color":"aqua"},{"text":"    Shuriken: ","color":"green"},{"score":{"name":"*","objective":"shurikenDis"},"color":"aqua"}]

title @a[scores={Kit=2,dashcharge=100..200},tag=upgraded] actionbar [{"text":"Number of Dashes:","color":"green"},{"text":" 1   ","color":"gold"},{"text":"Smoke Bomb: ","color":"green"},{"score":{"name":"*","objective":"smokeDis"},"color":"aqua"},{"text":"    Shuriken: ","color":"green"},{"score":{"name":"*","objective":"shurikenDis"},"color":"aqua"}]

title @a[scores={Kit=2,dashcharge=200..300},tag=upgraded] actionbar [{"text":"Number of Dashes:","color":"green"},{"text":" 2   ","color":"gold"},{"text":"Smoke Bomb: ","color":"green"},{"score":{"name":"*","objective":"smokeDis"},"color":"aqua"},{"text":"    Shuriken: ","color":"green"},{"score":{"name":"*","objective":"shurikenDis"},"color":"aqua"}]

title @a[scores={Kit=2,dashcharge=301..},tag=upgraded] actionbar [{"text":"Number of Dashes:","color":"green"},{"text":" 3   ","color":"gold"},{"text":"Smoke Bomb: ","color":"green"},{"score":{"name":"*","objective":"smokeDis"},"color":"aqua"},{"text":"    Shuriken: ","color":"green"},{"score":{"name":"*","objective":"shurikenDis"},"color":"aqua"}]