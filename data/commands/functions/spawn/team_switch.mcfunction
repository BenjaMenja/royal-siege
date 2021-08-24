tag @a[limit=1,tag=teamSwitch,team=Red] add switchToBlue

tag @a[limit=1,tag=teamSwitch,team=Blue] add switchToRed

team join Blue @a[tag=switchToBlue]

team join Red @a[tag=switchToRed]

tellraw @a [{"selector":"@a[tag=switchToBlue]"},{"text":" and ","color":"green"},{"selector":"@a[tag=switchToRed]"},{"text":" have swapped teams!","color":"green"}]

tag @a[tag=switchToRed] remove teamSwitch

tag @a[tag=switchToBlue] remove teamSwitch

tag @a remove switchToBlue

tag @a remove switchToRed
