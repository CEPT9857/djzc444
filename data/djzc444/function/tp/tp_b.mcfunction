scoreboard players reset @s tp
execute if score B gameflow matches 0 run tp @s[team=CT] -258.5 60 -782.5
execute if score B gameflow matches 0 run tellraw @s[team=T] {translate:"djzc.msg.no_tp1",fallback:"系统拒绝了你的要求，因为该战区尚未被占领。",color:red}
#如果B没有被占领，CT可以传送进点，但T不能

execute unless score B gameflow matches 0 run tp @s[team=T] -258.5 60 -782.5
execute unless score B gameflow matches 0 run tellraw @s[team=CT] {translate:"djzc.msg.no_tp2",fallback:"系统拒绝了你的要求，因为该战区已被敌方控制。",color:red}
#如果B被占领，T可以传送进点，但CT不能