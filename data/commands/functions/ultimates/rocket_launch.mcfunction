summon minecraft:item ~ ~0.5 ~ {Health:1000,PickupDelay:32767,Motion:[0.0,1.0,0.0],Tags:["rocketItem"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:181,rocket:1b}}}

particle smoke ~ ~ ~ 0 0 0 1 500 force

kill @e[type=item_frame,limit=1,sort=nearest]

kill @s