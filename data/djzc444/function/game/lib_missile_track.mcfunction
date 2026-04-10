execute as @e[type=minecraft:firework_rocket,tag=missile] at @s run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
#删除动量

execute as @e[type=minecraft:firework_rocket,tag=CT_AA] at @s facing entity @e[team=T,tag=AF,sort=furthest] feet run tp ^ ^ ^1.65
execute as @e[type=minecraft:firework_rocket,tag=T_AA] at @s facing entity @e[team=CT,tag=AF,sort=furthest] feet run tp ^ ^ ^1.65
#追踪敌人（空对空导弹，地对空导弹）
execute as @e[type=minecraft:firework_rocket,tag=CT_AG] at @s facing entity @a[team=T,tag=GF,sort=furthest] feet run tp ^ ^1 ^1.5
execute as @e[type=minecraft:firework_rocket,tag=T_AG] at @s facing entity @a[team=CT,tag=GF,sort=furthest] feet run tp ^ ^1 ^1.5
#追踪敌人（空对地导弹）

execute as @e[type=minecraft:firework_rocket,tag=AA] at @s facing entity @e[type=minecraft:item,sort=furthest] feet run tp ^ ^ ^2
execute as @e[type=minecraft:firework_rocket,tag=AG] at @s facing entity @e[type=minecraft:item,sort=furthest] feet run tp ^ ^ ^2
#干扰

execute as @a[team=T] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=CT_AA,distance=..3,limit=1] LifeTime set value 0
execute as @a[team=CT] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=T_AA,distance=..3,limit=1] LifeTime set value 0
#近炸引信（空对空导弹，地对空导弹）
execute as @a[team=CT] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=T_AG,distance=..3,limit=1] LifeTime set value 0
execute as @a[team=T] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=CT_AG,distance=..3,limit=1] LifeTime set value 0
#近炸引信（空对地导弹）

execute at @e[tag=AA] run particle minecraft:glow_squid_ink ^ ^ ^-1.5
execute at @e[tag=AA] run particle minecraft:large_smoke ^ ^ ^-1.5
#特效（空对空导弹）
execute at @e[tag=AG] run particle minecraft:explosion
execute at @e[tag=AG] run particle minecraft:large_smoke
#特效（空对地导弹）
execute at @e[tag=GF_AA] run particle minecraft:explosion
#特效（地对空导弹）