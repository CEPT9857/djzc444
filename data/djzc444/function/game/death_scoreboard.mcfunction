#T阵亡[team=T,scores={djzc.count_die1=1..}]，如果是被CT击杀(djzc.T_D_by_CT matches 1..)的，则什么都不做（say1）
#execute as @a[team=T,scores={djzc.count_die1=1..}] if score @s djzc.T_D_by_CT matches 1.. run say 1
#T阵亡，如果是意外，则给距离最近的CT分数
execute as @a[team=T,scores={djzc.count_die1=1..}] if score @s djzc.T_D_by_CT matches 0 run scoreboard players add @p[team=CT] djzc.CT 1
execute as @a[team=T,scores={djzc.count_die1=1..}] if score @s djzc.T_D_by_CT matches 0 run scoreboard players add @p[team=CT] djzc.count_kill 1

#CT阵亡[team=CT,scores={djzc.count_die1=1..}]，如果是被T击杀(djzc.CT_D_by_T matches 1..)的，则什么都不做（say1）
#execute as @a[team=CT,scores={djzc.count_die1=1..}] if score @s djzc.CT_D_by_T matches 1.. run say 1
#CT阵亡，如果是意外，则给距离最近的T分数
execute as @a[team=CT,scores={djzc.count_die1=1..}] if score @s djzc.CT_D_by_T matches 0 run scoreboard players add @p[team=T] djzc.T 1
execute as @a[team=CT,scores={djzc.count_die1=1..}] if score @s djzc.CT_D_by_T matches 0 run scoreboard players add @p[team=T] djzc.count_kill 1

#清空分数防止BUG
scoreboard players set @a[scores={djzc.T_D_by_CT=1..}] djzc.T_D_by_CT 0
scoreboard players set @a[scores={djzc.CT_D_by_T=1..}] djzc.CT_D_by_T 0
scoreboard players set @a[scores={djzc.count_die1=1..}] djzc.count_die1 0