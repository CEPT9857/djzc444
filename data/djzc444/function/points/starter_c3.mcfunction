effect clear @e[tag=c3]
#清除C3的高亮
playsound entity.ender_dragon.growl music @a[team=CT] -368.54 62.77 -760.00 100
playsound entity.player.levelup music @a[team=T] -369.00 62.91 -758.53 1000
#音效
execute if score C3 gameflow matches 1 run tellraw @a {text:"C3已被激活，请勿重复激活启动器!",color:"green"}
execute if score C3 gameflow matches 0 run tellraw @a {text:"启动器[C3]被激活!",color:"green"}
#友情提示
data merge entity @e[x=-378,y=81,z=-873,limit=1,type=minecraft:glow_item_frame,distance=..1] {ItemRotation:0}
#重置展示框
scoreboard players set C3 gameflow 1
function djzc444:game/game_flow
#请求并修改游戏流程计算器,标志C3被激活