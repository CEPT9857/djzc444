execute store result score c1 gameflow run data get entity @e[x=-385,y=63,z=-690,limit=1,type=minecraft:glow_item_frame,distance=..1] ItemRotation
execute if score c1 gameflow matches 7 run function djzc444:points/starter_c1
#C1
execute store result score c2 gameflow run data get entity @e[x=-350,y=58,z=-767,limit=1,type=minecraft:glow_item_frame,distance=..1] ItemRotation
execute if score c2 gameflow matches 7 run function djzc444:points/starter_c2
#C2
execute store result score c3 gameflow run data get entity @e[x=-378,y=81,z=-873,limit=1,type=minecraft:glow_item_frame,distance=..1] ItemRotation
execute if score c3 gameflow matches 7 run function djzc444:points/starter_c3
#C3
#大写C表示是否被占领，小写c表示旋转角度