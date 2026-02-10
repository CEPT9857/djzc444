execute as @p[x=-306,y=63,z=-857,dx=23,dy=7,dz=4,team=T] at @p run scoreboard players remove T_A time3 2
#如果T在A点内，扣除占点分数
execute as @p[x=-306,y=63,z=-857,dx=23,dy=7,dz=4,team=CT] at @p run scoreboard players add T_A time3 1
#如果CT在A点内，增加占点分数

execute store result bossbar minecraft:a value run scoreboard players get T_SA time3
#存储占点分数到bossbar
execute as @p[x=-306,y=63,z=-857,dx=23,dy=7,dz=4] at @p run bossbar set minecraft:a visible true
bossbar set minecraft:a players @a
#显示bossbar
execute if score T_SA time3 <= 15 time3 run bossbar set minecraft:a color red
execute if score T_SA time3 > 15 time3 run bossbar set minecraft:a color blue
#改bossbar颜色

execute if score T_A time3 <= 1000 time3 run scoreboard players remove T_SA time3 1
execute if score T_A time3 <= 1000 time3 run scoreboard players set T_A time3 1040
#小于1000时退位

execute if score T_SA time3 <= 0 time3 run function djzc444:points/a_occupy_by_t
execute if score T_SA time3 <= 0 time3 run scoreboard players set T_SA time3 30
#引用占点函数

execute if score T_A time3 > 1040 time3 run scoreboard players add T_SA time3 1
execute if score T_A time3 > 1040 time3 run scoreboard players set T_A time3 1002
#超过1040时进位
execute if score T_SA time3 > 30 time3 run scoreboard players set T_SA time3 30
#超过30时限制最大值


execute as @p at @s unless entity @p[x=-306,y=63,z=-857,dx=23,dy=7,dz=4] run bossbar set minecraft:a visible false
#如果点里没有人，关闭boss栏