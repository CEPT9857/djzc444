scoreboard players reset @s tp
tp @s[team=CT] -445 73 -693
tellraw @s[team=T] {translate:"djzc.msg.no_tp3",fallback:"系统拒绝了你的要求，因为该地区已被敌方控制。",color:red}
#CT第二出生点