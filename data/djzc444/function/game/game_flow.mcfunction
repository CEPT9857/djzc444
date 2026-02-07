scoreboard players operation A+B gameflow += A gameflow
scoreboard players operation A+B gameflow += B gameflow

execute if score A+B gameflow matches 2 run function djzc444:game/flow_a_b
scoreboard players set A+B gameflow 0
#若A点/B点同时被T占领，进入C点启动器阶段


#C点启动器发送信号，修改B+的分数为2
execute if score B+ gameflow matches 2 run scoreboard players set C gameflow 1
execute if score B+ gameflow matches 2 run scoreboard players set B+ gameflow 0
#若进入C点启动器全部启动，进入C点攻防战

#C点发送信号，修改C的分数为2
execute if score C gameflow matches 2 run scoreboard players set C+ gameflow 1
execute if score C gameflow matches 2 run scoreboard players set C gameflow 0
#若C点被T占领，进入D点启动器阶段

execute if score C+ gameflow matches 2 run scoreboard players set D gameflow 1
execute if score C+ gameflow matches 2 run scoreboard players set C+ gameflow 0
#若D点启动器全部启动，进入D点攻防战

execute if score D gameflow matches 2 run function djzc444:game/flow_end
execute if score D gameflow matches 2 run scoreboard players set D gameflow 0
#若D点被T占领，进入结束阶段