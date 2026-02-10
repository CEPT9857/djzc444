execute as @p[x=-385,y=66,z=-768,dx=16,dy=7,dz=12,team=T] at @p run scoreboard players remove T_C time3 2
#如果T在C点内，扣除占点分数
execute as @p[x=-385,y=66,z=-768,dx=16,dy=7,dz=12,team=CT] at @p run scoreboard players add T_C time3 1
#如果CT在C点内，增加占点分数
execute store result bossbar minecraft:c value run scoreboard players get T_SC time3
#存储占点分数到bossbar
execute as @p[x=-385,y=66,z=-768,dx=16,dy=7,dz=12] at @p run bossbar set minecraft:c visible true
bossbar set minecraft:c players @a
#显示bossbar
execute if score T_SC time3 <= 15 time3 run bossbar set minecraft:c color red
execute if score T_SC time3 > 15 time3 run bossbar set minecraft:c color blue
#改bossbar颜色

execute if score T_C time3 <= 1000 time3 run scoreboard players remove T_SC time3 1
execute if score T_C time3 <= 1000 time3 run scoreboard players set T_C time3 1040
#小于1000时退位

execute if score T_SC time3 <= 0 time3 run function djzc444:points/c_occupy_by_t
execute if score T_SC time3 <= 0 time3 run scoreboard players set T_SC time3 30
#引用占点函数

execute if score T_C time3 > 1040 time3 run scoreboard players add T_SC time3 1
execute if score T_C time3 > 1040 time3 run scoreboard players set T_C time3 1002
#超过1040时进位
execute if score T_SC time3 > 30 time3 run scoreboard players set T_SC time3 30
#超过30时限制最大值


execute as @p at @s unless entity @p[x=-385,y=66,z=-768,dx=16,dy=7,dz=12] run bossbar set minecraft:c visible false
#如果点里没有人，关闭boss栏