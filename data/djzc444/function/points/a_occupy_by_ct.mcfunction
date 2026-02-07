fill -414 23 -807 -414 24 -807 air
fill -388 23 -807 -388 24 -807 glass
#开关传送点
setblock -304 68 -855 minecraft:blue_stained_glass
#更改点位颜色
setblock -395 27 -768 air
scoreboard players set A gameflow 0
#修改游戏流程计算器
playsound entity.player.levelup music @a[team=CT] -369.00 62.91 -758.53 1000
playsound entity.ender_dragon.growl music @a[team=T] -368.54 62.77 -760.00 100
#音效
scoreboard players set T_SA time3 30
bossbar set minecraft:a visible false
execute as @a[x=-306,y=63,z=-857,dx=23,dy=7,dz=4,team=CT] at @s run scoreboard players add @s occupy 1

function djzc444:game/game_flow