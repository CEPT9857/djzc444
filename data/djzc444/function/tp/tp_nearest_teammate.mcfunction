scoreboard players reset @s tp
execute as @s[team=CT] run tp @s @p[team=CT,distance=1..]
execute as @s[team=CT] run function djzc444:ctmsg/ctmsg_cover

execute as @s[team=T] run tp @s @p[team=T,distance=1..]
execute as @s[team=T] run function djzc444:tmsg/tmsg_cover