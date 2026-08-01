#导弹系统
#> track_type djzc.option: 0=tag判定(AF/GF)  1=predicate判定(is_on_ground/no_on_ground)
#追踪
execute if score track_type djzc.option matches 1 run function djzc666:game/lib_missile_track_predicate
execute unless score track_type djzc.option matches 1 run function djzc666:game/lib_missile_track_tag
#近炸引信
execute if score track_type djzc.option matches 1 run function djzc666:game/lib_missile_fuze_predicate
execute unless score track_type djzc.option matches 1 run function djzc666:game/lib_missile_fuze_tag

#敌导弹告警
execute if score 刻 djzc.time2 matches 20 run function djzc666:game/lib_missile_from_enemy
execute if score 刻 djzc.time2 matches 10 run function djzc666:game/lib_missile_from_enemy