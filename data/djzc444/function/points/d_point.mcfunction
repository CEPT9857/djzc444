execute as @p[x=-469,y=61,z=-764,dx=2,dy=1,dz=7,team=T] at @p run scoreboard players remove T_D time3 2
#如果T在D点内，扣除占点分数
execute as @p[x=-469,y=61,z=-764,dx=2,dy=1,dz=7,team=CT] at @p run scoreboard players add T_D time3 1
#如果CT在D点内，增加占点分数
execute store result bossbar minecraft:d value run scoreboard players get T_SD time3
#存储占点分数到bossbar
execute as @p[x=-469,y=61,z=-764,dx=2,dy=1,dz=7] at @p run bossbar set minecraft:d visible true
bossbar set minecraft:d players @a
#显示bossbar
execute if score T_SD time3 <= 15 time3 run bossbar set minecraft:d color red
execute if score T_SD time3 > 15 time3 run bossbar set minecraft:d color blue
#改bossbar颜色

execute if score T_D time3 <= 1000 time3 run scoreboard players remove T_SD time3 1
execute if score T_D time3 <= 1000 time3 run scoreboard players set T_D time3 1040
#小于1000时退位

execute if score T_SD time3 <= 0 time3 run function djzc444:points/d_occupy_by_t
execute if score T_SD time3 <= 0 time3 run scoreboard players set T_SD time3 30
#引用占点函数

execute if score T_D time3 > 1040 time3 run scoreboard players add T_SD time3 1
execute if score T_D time3 > 1040 time3 run scoreboard players set T_D time3 1002
#超过1040时进位
execute if score T_SD time3 > 30 time3 run scoreboard players set T_SD time3 30
#超过30时限制最大值


execute as @p at @s unless entity @p[x=-469,y=61,z=-764,dx=2,dy=1,dz=7] run bossbar set minecraft:d visible false
#如果点里没有人，关闭boss栏