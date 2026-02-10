fill -416 23 -807 -416 24 -807 minecraft:glass
fill -386 23 -807 -386 24 -807 air
#开关传送点
setblock -259 61 -772 minecraft:red_stained_glass
#更改点位颜色
setblock -398 27 -768 minecraft:redstone_block
scoreboard players set B gameflow 1
#修改游戏流程计算器
playsound entity.player.levelup music @a[team=T] -369.00 62.91 -758.53 1000
playsound entity.ender_dragon.growl music @a[team=CT] -368.54 62.77 -760.00 100
#音效
scoreboard players set T_SB time3 30
execute as @a[x=-257,y=57,z=-784,dx=-16,dy=8,dz=15,team=T] at @s run scoreboard players add @s occupy 1

function djzc444:game/game_flow
#运行游戏流程计算器

tellraw @a {text:"B点已被T阵营占领!",color:"green"}
#友情提示

bossbar set minecraft:b visible false
#关闭bossbar