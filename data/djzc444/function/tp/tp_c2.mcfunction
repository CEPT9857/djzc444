scoreboard players reset @s tp
execute if score C2 gameflow matches 0 run tp @s[team=CT] -350.39 57.50 -771.69
execute if score C2 gameflow matches 0 run tellraw @s[team=T] {translate:"djzc.msg.no_tp5",fallback:"系统拒绝了你的要求，因为该启动器尚未被激活。",color:red}
#如果C2没有被激活，CT可以传送进点，但T不能

execute unless score C2 gameflow matches 0 run tp @s[team=T] -350.39 57.50 -771.69
execute unless score C2 gameflow matches 0 run tellraw @s[team=CT] {translate:"djzc.msg.no_tp6",fallback:"系统拒绝了你的要求，因为该启动器已被敌方激活。",color:red}
#如果C2被激活，T可以传送进点，但CT不能