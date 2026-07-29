#导弹系统
function djzc666:game/lib_missile_track
function djzc666:game/lib_missile_fuze
#敌导弹告警
execute if score 刻 djzc.time2 matches 20 run function djzc666:game/lib_missile_from_enemy
execute if score 刻 djzc.time2 matches 10 run function djzc666:game/lib_missile_from_enemy