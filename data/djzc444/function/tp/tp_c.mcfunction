scoreboard players reset @s tp
execute if score C gameflow matches 0 run tp @s[team=CT] -370.55 73.00 -764.43
execute unless score C gameflow matches -1 run tellraw @s[team=T] {text:"系统拒绝了你的要求，因为该战区尚未被占领。",color:red}
#如果C没有被激活，CT可以传送进点，但T不能

execute if score C gameflow matches -1 run tp @s[team=T] -370.55 73.00 -764.43
execute unless score C gameflow matches 0 run tellraw @s[team=CT] {text:"系统拒绝了你的要求，因为该战区已被敌方激活。",color:red}
#如果C被激活，T和CT都不可以传送进点
#如果C被占领，T可以传送进点，而CT不能