scoreboard players reset @s tp
tp @s[team=T] -265 63 -910
tellraw @s[team=CT] {translate:"djzc.msg.no_tp3",fallback:"系统拒绝了你的要求，因为该地区已被敌方控制。",color:red}
#T第一出生点