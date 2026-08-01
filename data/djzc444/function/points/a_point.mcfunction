execute as @p[x=-306,y=63,z=-857,dx=23,dy=7,dz=4,team=T] at @p run scoreboard players remove T_A djzc.time3 2
#如果T在A点内，扣除占点分数
execute as @p[x=-306,y=63,z=-857,dx=23,dy=7,dz=4,team=CT] at @p run scoreboard players add T_A djzc.time3 1
#如果CT在A点内，增加占点分数

execute store result bossbar djzc_point:a value run scoreboard players get T_SA djzc.time3
#存储占点分数到bossbar
execute as @p[x=-306,y=63,z=-857,dx=23,dy=7,dz=4] at @p run bossbar set djzc_point:a visible true
bossbar set djzc_point:a players @a
#显示bossbar
execute if score T_SA djzc.time3 <= 15 djzc.time3 run bossbar set djzc_point:a color red
execute if score T_SA djzc.time3 > 15 djzc.time3 run bossbar set djzc_point:a color blue
#改bossbar颜色

execute if score T_A djzc.time3 <= 1000 djzc.time3 run scoreboard players remove T_SA djzc.time3 1
execute if score T_A djzc.time3 <= 1000 djzc.time3 run scoreboard players set T_A djzc.time3 1040
#小于1000时退位

execute if score T_SA djzc.time3 <= 0 djzc.time3 run function djzc444:points/a_occupy_by_t
execute if score T_SA djzc.time3 <= 0 djzc.time3 run scoreboard players set T_SA djzc.time3 60
#引用占点函数

execute if score T_A djzc.time3 > 1040 djzc.time3 run scoreboard players add T_SA djzc.time3 1
execute if score T_A djzc.time3 > 1040 djzc.time3 run scoreboard players set T_A djzc.time3 1002
#超过1040时进位
execute if score T_SA djzc.time3 > 60 djzc.time3 run scoreboard players set T_SA djzc.time3 60
#超过30时限制最大值


execute as @p at @s unless entity @p[x=-306,y=63,z=-857,dx=23,dy=7,dz=4] run bossbar set djzc_point:a visible false
#如果点里没有人，关闭boss栏