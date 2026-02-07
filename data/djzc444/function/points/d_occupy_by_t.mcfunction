fill -414 23 -812 -414 24 -812 glass
fill -388 23 -812 -388 24 -812 air
#开关传送点
setblock -458 60 -761 minecraft:red_stained_glass
#更改点位颜色
setblock -398 27 -754 minecraft:redstone_block
scoreboard players set D gameflow 1
#修改游戏流程计算器
playsound entity.ender_dragon.growl music @a[team=CT] -368.54 62.77 -760.00 100
playsound entity.player.levelup music @a[team=T] -369.00 62.91 -758.53 1000
#音效
scoreboard players set T_SD time3 30
bossbar set minecraft:d visible false
execute as @p[x=-469,y=61,z=-764,dx=2,dy=1,dz=7,team=T] at @s run scoreboard players add @s occupy 1