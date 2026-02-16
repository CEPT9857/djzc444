fill -467 62 -764 -469 62 -758 air
#打开D点盖子
scoreboard players set C+ gameflow 2
function djzc444:game/game_flow
#修改并运行游戏流程计算器
tellraw @a {text:"D点启动器被全部激活，D点已向T阵营开放占领",color:"green"}
#友情提示

tell @a[team=T] 进攻D点！
playsound minecraft:item.goat_horn.sound.3 player @a[team=T] -386.00 70.39 -755.52 1000

tell @a[team=CT] 防守D点！
playsound minecraft:item.goat_horn.sound.7 player @a[team=CT] -386.00 70.39 -755.52 1000
#音效

scoreboard players set D1 gameflow -1
scoreboard players set D2 gameflow -1
scoreboard players set D3 gameflow -1
#启动器分数调节为-1，防止在调试时挡住其他选项