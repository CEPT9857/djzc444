scoreboard players reset @s tp
execute if score C3 gameflow matches 0 run tp @s[team=CT] -380.19 83.25 -865.52
execute if score C3 gameflow matches 0 run tellraw @s[team=T] {text:"系统拒绝了你的要求，因为该启动器尚未被激活。",color:red}
#如果C3没有被激活，CT可以传送进点，但T不能

execute unless score C3 gameflow matches 0 run tp @s[team=T] -380.19 83.25 -865.52
execute unless score C3 gameflow matches 0 run tellraw @s[team=CT] {text:"系统拒绝了你的要求，因为该启动器已被敌方激活。",color:red}
#如果C3被激活，T可以传送进点，但CT不能