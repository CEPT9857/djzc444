execute as @p[x=-257,y=57,z=-784,dx=-16,dy=8,dz=15,team=T] at @p run scoreboard players remove T_B time3 2
#如果T在B点内，扣除占点分数
execute as @p[x=-257,y=57,z=-784,dx=-16,dy=8,dz=15,team=CT] at @p run scoreboard players add T_B time3 1
#如果CT在B点内，增加占点分数

execute store result bossbar minecraft:b value run scoreboard players get T_SB time3
#存储占点分数到bossbar
execute as @p[x=-257,y=57,z=-784,dx=-16,dy=8,dz=15] at @p run bossbar set minecraft:b visible true
bossbar set minecraft:b players @a
#显示bossbar
execute if score T_SB time3 <= 15 time3 run bossbar set minecraft:b color red
execute if score T_SB time3 > 15 time3 run bossbar set minecraft:b color blue
#改bossbar颜色

execute if score T_B time3 <= 1000 time3 run scoreboard players remove T_SB time3 1
execute if score T_B time3 <= 1000 time3 run scoreboard players set T_B time3 1040
#小于1000时退位

execute if score T_SB time3 <= 0 time3 run function djzc444:points/b_occupy_by_t
execute if score T_SB time3 <= 0 time3 run scoreboard players set T_SB time3 60
#引用占点函数

execute if score T_B time3 > 1040 time3 run scoreboard players add T_SB time3 1
execute if score T_B time3 > 1040 time3 run scoreboard players set T_B time3 1002
#超过1040时进位
execute if score T_SB time3 > 60 time3 run scoreboard players set T_SB time3 60
#超过30时限制最大值


execute as @p at @s unless entity @p[x=-257,y=57,z=-784,dx=-16,dy=8,dz=15] run bossbar set minecraft:b visible false
#如果点里没有人，关闭boss栏