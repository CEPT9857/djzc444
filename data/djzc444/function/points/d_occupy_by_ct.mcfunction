fill -414 23 -812 -414 24 -812 air
fill -388 23 -812 -388 24 -812 glass
#开关传送点
setblock -458 60 -761 minecraft:blue_stained_glass
#更改点位颜色
setblock -398 27 -754 minecraft:air
scoreboard players set D gameflow 0
#修改游戏流程计算器
playsound entity.ender_dragon.growl music @a[team=T] -368.54 62.77 -760.00 100
playsound entity.player.levelup music @a[team=CT] -369.00 62.91 -758.53 1000
#音效
scoreboard players set T_SD time3 30
execute as @p[x=-469,y=61,z=-764,dx=2,dy=1,dz=7,team=CT] at @s run scoreboard players add @s occupy 1

function djzc444:game/game_flow
#运行游戏流程计算器

tellraw @a {text:"D点已被CT阵营占领!",color:"green"}
#友情提示

bossbar set minecraft:d visible false
#关闭bossbar