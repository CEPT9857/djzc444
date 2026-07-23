execute as @a[team=T,predicate=djzc444:select_msg] if score @s djzc.r_click7 >= 1 djzc.r_click7 run dialog show @s djzc444:tmsg
execute as @a[team=CT,predicate=djzc444:select_msg] if score @s djzc.r_click7 >= 1 djzc.r_click7 run dialog show @s djzc444:ctmsg
#检测书的标签,展示步话机
execute as @a[predicate=djzc444:select_userbook] if score @s djzc.r_click7 >= 1 djzc.r_click7 run function djzc444:dialog/user_dialog
#检测书的标签，展示成员用书
execute as @a[predicate=djzc444:select_opbook] if score @s djzc.r_click7 >= 1 djzc.r_click7 run function djzc444:dialog/op_dialog
#检测书的标签，展示成员用书
execute as @a if score @s djzc.r_click7 >= 1 djzc.r_click7 run scoreboard players reset @s djzc.r_click7
#重置分数