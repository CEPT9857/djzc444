setblock -259 61 -772 minecraft:blue_stained_glass
#更改点位颜色
setblock -398 27 -768 air
scoreboard players set B gameflow 0
#修改游戏流程计算器
playsound entity.player.levelup music @a[team=CT] -369.00 62.91 -758.53 1000
playsound entity.ender_dragon.growl music @a[team=T] -368.54 62.77 -760.00 100
#音效
scoreboard players set T_SB time3 30
execute as @p[x=-256,y=60,z=-783,dx=-7,dy=2,dz=1,team=CT] at @s run scoreboard players add @s occupy 1

function djzc444:game/game_flow
#运行游戏流程计算器

tellraw @a {translate:"djzc.msg.b_occupy_by_ct",fallback:"B点已被CT阵营占领!",color:"green"}
#友情提示

bossbar set minecraft:b visible false
#关闭bossbar