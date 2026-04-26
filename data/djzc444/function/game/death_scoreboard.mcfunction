scoreboard players operation @a[team=T,scores={dz_die1=1..}] dz_die1 -= @a[team=T,scores={T_D_by_CT=1..}] T_D_by_CT
scoreboard players set @a[team=T,scores={T_D_by_CT=1..}] T_D_by_CT 0
execute at @a[team=T,scores={dz_die1=1..}] run scoreboard players add @p[team=CT] CT 1
execute at @a[team=T,scores={dz_die1=1..}] run scoreboard players add @p[team=CT] dz_kill 1
scoreboard players set @a[team=T,scores={dz_die1=1..}] dz_die1 0
#T阵亡，给距离最近的CT分数
scoreboard players operation @a[team=CT,scores={dz_die1=1..}] dz_die1 -= @a[team=CT,scores={CT_D_by_T=1..}] CT_D_by_T
scoreboard players set @a[team=CT,scores={CT_D_by_T=1..}] CT_D_by_T 0
execute at @a[team=CT,scores={dz_die1=1..}] run scoreboard players add @p[team=T] T 1
execute at @a[team=CT,scores={dz_die1=1..}] run scoreboard players add @p[team=T] dz_kill 1
scoreboard players set @a[team=CT,scores={dz_die1=1..}] dz_die1 0
#CT阵亡，给距离最近的T分数
#意义不明的屎山代码，早晚要重构这个击杀计算系统