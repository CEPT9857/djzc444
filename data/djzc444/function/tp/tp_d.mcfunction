scoreboard players reset @s tp
execute if score D gameflow matches 0 run tp @s[team=CT] -483.21 63.50 -777.33
execute unless score D gameflow matches -1 run tellraw @s[team=T] {text:"系统拒绝了你的要求，因为该战区尚未被占领。",color:red}
#如果D没有被激活，CT可以传送进点，但T不能

execute if score D gameflow matches -1 run tp @s[team=T] -483.21 63.50 -777.33
execute unless score D gameflow matches 0 run tellraw @s[team=CT] {text:"系统拒绝了你的要求，因为该战区已被敌方占领。",color:red}
#如果D被激活，T和CT都不可以传送进点
#如果D被占领，T可以传送进点，而CT不能