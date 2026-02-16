scoreboard players reset @s tp
tp @s[team=T] -36 68 -841
tellraw @s[team=CT] {text:"系统拒绝了你的要求，因为该地区已被敌方控制。",color:red}
#T的机场