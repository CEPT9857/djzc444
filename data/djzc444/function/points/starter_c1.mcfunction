effect clear @e[tag=c1]
#清除C1的高亮
playsound entity.ender_dragon.growl music @a[team=CT] -368.54 62.77 -760.00 100
playsound entity.player.levelup music @a[team=T] -369.00 62.91 -758.53 1000
#音效
execute if score C1 gameflow matches 1 run tellraw @a {text:"C1已被激活，请勿重复激活启动器!",color:"green"}
execute if score C1 gameflow matches 0 run tellraw @a {text:"启动器[C1]被激活!",color:"green"}
#友情提示
data merge entity @e[x=-385,y=63,z=-690,limit=1,type=minecraft:glow_item_frame,distance=..1] {ItemRotation:0}
#重置展示框
scoreboard players set C1 gameflow 1
function djzc444:game/game_flow
#请求并修改游戏流程计算器，标志C1被激活