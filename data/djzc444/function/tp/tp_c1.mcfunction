scoreboard players reset @s tp
execute if score C1 gameflow matches 0 run tp @s[team=CT] -386.51 67.00 -660.54
execute if score C1 gameflow matches 0 run tellraw @s[team=T] {translate:"djzc.msg.no_tp5",fallback:"系统拒绝了你的要求，因为该启动器尚未被激活。",color:red}
#如果C1没有被占领，CT可以传送进点，但T不能

execute unless score C1 gameflow matches 0 run tp @s[team=T] -386.51 67.00 -660.54
execute unless score C1 gameflow matches 0 run tellraw @s[team=CT] {translate:"djzc.msg.no_tp6",fallback:"系统拒绝了你的要求，因为该启动器已被敌方激活。",color:red}
#如果C1被占领，T可以传送进点，但CT不能