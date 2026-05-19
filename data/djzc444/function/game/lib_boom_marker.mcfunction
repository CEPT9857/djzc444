#没收没有耐久的轰炸指示器
execute as @a if items entity @s weapon minecraft:carrot_on_a_stick[minecraft:damage~{damage:25}] run item replace entity @s weapon with air
#在可召唤轰炸的区域内，可以召唤轰炸标记
execute unless score debug 3 matches 1 as @a[x=-206,y=84,z=-723,dx=5,dy=5,dz=5,scores={r_click5=1..}] at @s run summon minecraft:marker ~ ~1.5 ~ {Tags:["mark1"]}
execute unless score debug 3 matches 1 as @a[x=-378,y=97,z=-887,dx=3,dy=5,dz=3,scores={r_click5=1..}] at @s run summon minecraft:marker ~ ~1.5 ~ {Tags:["mark1"]}
execute if score debug 3 matches 1 as @a[scores={r_click5=1..}] at @s run summon minecraft:marker ~ ~1.5 ~ {Tags:["mark1"]}
#data modify，获取玩家的朝向
execute as @e[type=minecraft:marker,tag=mark1] run data modify entity @s Rotation set from entity @p[scores={r_click5=1..},predicate=djzc444:select_carrot_on_a_stick] Rotation
#扣掉轰炸指示器的耐久（debug模式不扣）
execute as @e[tag=mark1] at @s unless score debug 3 matches 1 run item modify entity @p[distance=..1.5,predicate=djzc444:select_carrot_on_a_stick] weapon djzc444:damage_half
#重置分数
execute as @a[scores={r_click5=1..}] run scoreboard players set @s r_click5 0
#设置（防超时）分数，挂接到常驻时钟
execute as @e[tag=mark1] run scoreboard players set @s time2 400
#修改标签，表明已经获取过朝向
execute as @e[tag=mark1] at @s run data merge entity @s {Tags:["mark2"]}
#标记开始向前飞行
execute as @e[tag=mark2] at @s run tp ^ ^ ^1
#碰到地面就放音效
execute as @e[tag=mark2] at @s unless block ~ ~ ~ #replaceable run playsound entity.creeper.primed ambient @a ~ ~ ~
#设置（爆炸计时）分数，挂接到常驻时钟
execute as @e[tag=mark2] at @s unless block ~ ~ ~ #replaceable run scoreboard players set @s time2 20
#碰到地面就变标签
execute as @e[tag=mark2] at @s unless block ~ ~ ~ #replaceable run data merge entity @s {Tags:["mark3"]}
#超时就变标签
execute as @e[tag=mark2,scores={time2=0}] at @s run data merge entity @s {Tags:["mark3"]}
#变标签的在常驻时钟函数中扣20分（1秒），然后引爆
execute as @e[tag=mark3,scores={time2=0}] at @s run function djzc444:game/lib_boom_marker_damage
#特效
execute as @e[tag=mark2] at @s run particle minecraft:end_rod ~ ~ ~ 0 0.1 0 1 0 force
execute as @e[tag=mark3] at @s run particle minecraft:glow_squid_ink ~ ~ ~ 0 0.01 0 100 0 force