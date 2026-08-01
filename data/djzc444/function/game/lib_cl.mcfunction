#玩家使用刺雷，将周边最近的烟花火箭（也就是刺雷的战斗部）LifeTime改为14
execute as @s at @s run data modify entity @n[type=minecraft:firework_rocket] LifeTime set value 14
say 1
#移除成就防止BUG
advancement revoke @s only djzc444:tool/cl