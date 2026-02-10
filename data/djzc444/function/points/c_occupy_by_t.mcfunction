fill -416 23 -812 -416 24 -812 glass
fill -386 23 -812 -386 24 -812 air
#开关传送点
setblock -366 65 -759 minecraft:red_stained_glass
#更改点位颜色
setblock -395 27 -754 redstone_block
scoreboard players set C gameflow 2
#修改游戏流程计算器
playsound entity.ender_dragon.growl music @a[team=CT] -368.54 62.77 -760.00 100
playsound entity.player.levelup music @a[team=T] -369.00 62.91 -758.53 1000

scoreboard players set T_SC time3 30
execute as @p[x=-385,y=66,z=-768,dx=16,dy=7,dz=12,team=T] at @p run scoreboard players add @s occupy 1

function djzc444:game/game_flow
#运行游戏流程计算器

tellraw @a {text:"C点已被T阵营占领!",color:"green"}
#友情提示

bossbar set minecraft:c visible false
#关闭bossbar