scoreboard players operation A+B djzc.gameflow += A djzc.gameflow
scoreboard players operation A+B djzc.gameflow += B djzc.gameflow

execute if score A+B djzc.gameflow matches 2 run function djzc444:game/flow_a_b
execute unless score A+B djzc.gameflow matches 2 run scoreboard players set A+B djzc.gameflow 0
#若A点/B点同时被T占领，进入C点启动器阶段

scoreboard players operation C123 djzc.gameflow += C1 djzc.gameflow
scoreboard players operation C123 djzc.gameflow += C2 djzc.gameflow
scoreboard players operation C123 djzc.gameflow += C3 djzc.gameflow
execute if score C123 djzc.gameflow matches 3 run function djzc444:points/c_starter
execute unless score C123 djzc.gameflow matches 3 run scoreboard players set C123 djzc.gameflow 0
#若C点启动器全部启动，发送启动信号
#C点启动器发送信号，修改B+的分数为2
execute if score B+ djzc.gameflow matches 2 run scoreboard players set C djzc.gameflow 1
execute if score B+ djzc.gameflow matches 2 run scoreboard players set B+ djzc.gameflow 0
#若C点启动器全部启动，进入C点攻防战

#C点发送信号，修改C的分数为2
execute if score C djzc.gameflow matches 2 run scoreboard players set C+ djzc.gameflow 1
execute if score C djzc.gameflow matches 2 run function djzc444:game/flow_c_d
execute if score C djzc.gameflow matches 2 run scoreboard players set C djzc.gameflow -1
#若C点被T占领，进入D点启动器阶段

scoreboard players operation D123 djzc.gameflow += D1 djzc.gameflow
scoreboard players operation D123 djzc.gameflow += D2 djzc.gameflow
scoreboard players operation D123 djzc.gameflow += D3 djzc.gameflow
execute if score D123 djzc.gameflow matches 3 run function djzc444:points/d_starter
execute unless score D123 djzc.gameflow matches 3 run scoreboard players set D123 djzc.gameflow 0
#若C点启动器全部启动，发送启动信号
#C点启动器发送信号，修改C+的分数为2
execute if score C+ djzc.gameflow matches 2 run scoreboard players set D djzc.gameflow 1
execute if score C+ djzc.gameflow matches 2 run scoreboard players set C+ djzc.gameflow 0
#若D点启动器全部启动，进入D点攻防战

execute if score D djzc.gameflow matches 2 run function djzc444:game/flow_end
execute if score D djzc.gameflow matches 2 run scoreboard players set D djzc.gameflow -1
#若D点被T占领，进入结束阶段