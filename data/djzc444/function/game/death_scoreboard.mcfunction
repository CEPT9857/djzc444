scoreboard players operation @a[team=T,scores={djzc.count_die1=1..}] djzc.count_die1 -= @a[team=T,scores={djzc.T_D_by_CT=1..}] djzc.T_D_by_CT
scoreboard players set @a[team=T,scores={djzc.T_D_by_CT=1..}] djzc.T_D_by_CT 0
execute at @a[team=T,scores={djzc.count_die1=1..}] run scoreboard players add @p[team=CT] djzc.CT 1
execute at @a[team=T,scores={djzc.count_die1=1..}] run scoreboard players add @p[team=CT] djzc.count_kill 1
scoreboard players set @a[team=T,scores={djzc.count_die1=1..}] djzc.count_die1 0
#T阵亡，给距离最近的CT分数
scoreboard players operation @a[team=CT,scores={djzc.count_die1=1..}] djzc.count_die1 -= @a[team=CT,scores={djzc.CT_D_by_T=1..}] djzc.CT_D_by_T
scoreboard players set @a[team=CT,scores={djzc.CT_D_by_T=1..}] djzc.CT_D_by_T 0
execute at @a[team=CT,scores={djzc.count_die1=1..}] run scoreboard players add @p[team=T] djzc.T 1
execute at @a[team=CT,scores={djzc.count_die1=1..}] run scoreboard players add @p[team=T] djzc.count_kill 1
scoreboard players set @a[team=CT,scores={djzc.count_die1=1..}] djzc.count_die1 0
#CT阵亡，给距离最近的T分数
#意义不明的屎山代码，早晚要重构这个击杀计算系统