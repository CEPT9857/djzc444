#近炸引信（空对空导弹）
execute as @e[team=T,tag=AF] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=CT_AA,distance=..3,limit=1] LifeTime set value 0
execute as @e[team=CT,tag=AF] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=T_AA,distance=..3,limit=1] LifeTime set value 0
#近炸引信（地对空导弹）
execute as @e[team=T,tag=AF] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=CT_GA,distance=..3,limit=1] LifeTime set value 0
execute as @e[team=CT,tag=AF] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=T_GA,distance=..3,limit=1] LifeTime set value 0
#近炸引信（空对地导弹）
execute as @e[team=CT,tag=GF] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=T_AG,distance=..3,limit=1] LifeTime set value 0
execute as @e[team=T,tag=GF] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=CT_AG,distance=..3,limit=1] LifeTime set value 0

#提取导弹发射者信息,然后执行伤害函数
execute as @e[type=minecraft:firework_rocket,tag=missile,nbt={LifeTime:0}] run function djzc444:game/lib_missile_damage with entity @s