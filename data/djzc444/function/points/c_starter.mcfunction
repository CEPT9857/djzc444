fill -416 23 -812 -416 24 -812 minecraft:glass
fill -386 23 -812 -386 24 -812 air
#修改传送点
scoreboard players set B+ gameflow 2
function djzc444:game/game_flow
#修改并运行游戏流程计算器
tellraw @a {text:"C点启动器被全部激活，C点已向T阵营开放占领",color:"green"}
#友情提示

tell @a[team=T] 进攻C点！
playsound minecraft:item.goat_horn.sound.2 player @a[team=T] -386.00 70.39 -755.52 1000

tell @a[team=CT] 防守C点！
playsound minecraft:item.goat_horn.sound.6 player @a[team=CT] -386.00 70.39 -755.52 1000
#音效

scoreboard players set C1 gameflow -1
scoreboard players set C2 gameflow -1
scoreboard players set C3 gameflow -1
#启动器分数调节为-1，防止在调试时挡住其他选项