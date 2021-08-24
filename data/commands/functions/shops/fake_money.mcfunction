tag @s add purchase

give @s[scores={Money=500..},team=Red,tag=purchase] gold_ingot{CustomModelData:148,display:{Name:'{"text":"Fake Money","italic":false}',Lore:['{"text":"Throw onto the ground and watch an unsuspecting enemy explode!"}']},HideFlags:1,Enchantments:[{}],fakemoneyred:1b} 3

give @s[scores={Money=500..},team=Blue,tag=purchase] gold_ingot{CustomModelData:148,display:{Name:'{"text":"Fake Money","italic":false}',Lore:['{"text":"Throw onto the ground and watch an unsuspecting enemy explode!"}']},HideFlags:1,Enchantments:[{}],fakemoneyblue:1b} 3

scoreboard players remove @s[scores={Money=500..}] Money 500