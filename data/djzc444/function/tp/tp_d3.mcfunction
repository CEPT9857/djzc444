scoreboard players reset @s tp
execute if score D3 gameflow matches 0 run tp @s[team=CT] -469 65 -816
execute if score D3 gameflow matches 0 run tellraw @s[team=T] {text:"系统拒绝了你的要求，因为该启动器尚未被激活。",color:red}
#如果D3没有被激活，CT可以传送进点，但T不能

execute unless score D3 gameflow matches 0 run tp @s[team=T] -469 65 -816
execute unless score D3 gameflow matches 0 run tellraw @s[team=CT] {text:"系统拒绝了你的要求，因为该启动器已被敌方激活。",color:red}
#如果D3被激活，T可以传送进点，但CT不能