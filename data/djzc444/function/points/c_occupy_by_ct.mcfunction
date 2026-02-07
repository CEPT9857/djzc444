fill -416 23 -812 -416 24 -812 air
fill -386 23 -812 -386 24 -812 glass
#开关传送点
setblock -366 65 -759 minecraft:blue_stained_glass
#更改点位颜色
setblock -395 27 -754 air
scoreboard players set C gameflow 0
#修改游戏流程计算器
playsound entity.ender_dragon.growl music @a[team=T] -368.54 62.77 -760.00 100
playsound entity.player.levelup music @a[team=CT] -369.00 62.91 -758.53 1000
#音效
scoreboard players set T_SC time3 30
bossbar set minecraft:c visible false
execute as @p[x=-385,y=66,z=-768,dx=16,dy=7,dz=12,team=CT] at @p run scoreboard players add @s occupy 1