execute store result score d1 djzc.gameflow run data get entity @e[x=-447,y=73,z=-728,limit=1,type=minecraft:glow_item_frame,distance=..1] ItemRotation
execute if score d1 djzc.gameflow matches 7 run function djzc444:points/starter_d1
#D1
execute store result score d2 djzc.gameflow run data get entity @e[x=-433,y=66,z=-760,limit=1,type=minecraft:glow_item_frame,distance=..1] ItemRotation
execute if score d2 djzc.gameflow matches 7 run function djzc444:points/starter_d2
#D2
execute store result score d3 djzc.gameflow run data get entity @e[x=-461,y=63,z=-813,limit=1,type=minecraft:glow_item_frame,distance=..1] ItemRotation
execute if score d3 djzc.gameflow matches 7 run function djzc444:points/starter_d3
#D3
#大写D表示是否被占领，小写d表示旋转角度