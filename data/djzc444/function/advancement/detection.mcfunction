#可见进度的检测
function djzc444:advancement/count_kill
function djzc444:advancement/count_occupy
function djzc444:advancement/stat_death
function djzc444:advancement/stat_fight
function djzc444:advancement/stat_kill
function djzc444:advancement/stat_lost
function djzc444:advancement/stat_win
execute as @a[scores={djzc.r_click=1..}] at @s run advancement grant @s only djzc444:fight/wea_ga
execute as @a[scores={djzc.r_click1=1..}] at @s run advancement grant @s only djzc444:fight/wea_aa
execute as @a[scores={djzc.r_click2=1..}] at @s run advancement grant @s only djzc444:fight/wea_ag
execute at @e[tag=shot,type=#minecraft:arrows,nbt={PortalCooldown:0}] run advancement grant @p[distance=..7] only djzc444:fight/wea_nova
#不可见进度（工具类）
#如果击杀数大于计分板中，立体机动的分数，给予进度
execute as @a if score @s djzc.count_kill > 立体机动 djzc.type run advancement grant @s only djzc444:tool/hkb