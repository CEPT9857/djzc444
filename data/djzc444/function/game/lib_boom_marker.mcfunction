execute as @a[scores={r_click5=1..}] at @s run kill @e[tag=mark3]
execute as @a[scores={r_click5=1..}] at @s run kill @e[tag=mark2]
#清理轰炸标记
execute as @a[x=-206,y=84,z=-723,dx=5,dy=5,dz=5,scores={r_click5=1..}] at @s run summon minecraft:marker ~ ~1 ~ {Tags:["mark1","mark2"],NoGravity:1b}
execute as @a[x=-378,y=97,z=-887,dx=3,dy=5,dz=3,scores={r_click5=1..}] at @s run summon minecraft:marker ~ ~1 ~ {Tags:["mark1","mark2"],NoGravity:1b}
#在可召唤轰炸的区域内，可以召唤轰炸标记
execute as @a[scores={r_click5=1..}] run scoreboard players set @s r_click5 0
#重置分数
execute as @e[tag=mark1] at @s run tp @p
#tp最近的玩家，获取玩家的朝向
execute as @e[tag=mark1] at @s run tp ~ ~1.5 ~
#向上移动1.5格，对齐玩家的眼睛
execute as @e[tag=mark1] at @s run tag @s remove mark1
#清除标签，表明已经获取过朝向
execute as @e[tag=mark2] at @s run tp ^ ^ ^1
#标记开始向前飞行
execute as @e[tag=mark2] at @s unless block ~ ~ ~ air run summon minecraft:marker ~ ~0.5 ~ {Tags:["mark3"],NoGravity:1b}
execute as @e[tag=mark2] at @s unless block ~ ~ ~ air run kill @s
#碰到地面就清除
execute as @e[tag=mark2] at @s run schedule function djzc444:weapon/boom_marker 20t replace
#爆炸

execute as @e[tag=mark3] at @s run particle minecraft:glow_squid_ink ~ ~1 ~ 0 0.01 0 100 0 force
execute as @e[tag=mark2] at @s run particle minecraft:end_rod ~ ~ ~ 0 0.1 0 1 0 force
#特效