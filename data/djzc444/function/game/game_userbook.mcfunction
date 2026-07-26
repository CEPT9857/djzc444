#计分板显示
execute as @a at @s if score @s djzc.option matches 1 run function djzc444:option/scoreboard_stat_kill
execute as @a at @s if score @s djzc.option matches 2 run function djzc444:option/scoreboard_stat_die
execute as @a at @s if score @s djzc.option matches 3 run function djzc444:option/scoreboard_ct
execute as @a at @s if score @s djzc.option matches 4 run function djzc444:option/scoreboard_t
execute as @a at @s if score @s djzc.option matches 5 run function djzc444:option/scoreboard_fight
execute as @a at @s if score @s djzc.option matches 6 run function djzc444:option/scoreboard_fight_win
execute as @a at @s if score @s djzc.option matches 7 run function djzc444:option/scoreboard_fight_lost

#阵营选择
execute if score game djzc.gameflow matches 0 as @a at @s if score @s djzc.option matches 9 run function djzc444:option/do_join_ct
execute if score game djzc.gameflow matches 0 as @a at @s if score @s djzc.option matches 10 run function djzc444:option/do_join_t
execute if score game djzc.gameflow matches 1 as @a[team=T] at @s if score @s djzc.option matches 9 run function djzc444:option/no_run
execute if score game djzc.gameflow matches 1 as @a[team=CT] at @s if score @s djzc.option matches 10 run function djzc444:option/no_run

#兵种选择
execute as @a at @s if score @s djzc.option matches 11 run function djzc444:option/do_choose_type
#步话机
execute as @a at @s if score @s djzc.option matches 12 run function djzc444:option/do_msg
#重新部署
execute as @a at @s if score @s djzc.option matches 13 run function djzc444:option/do_kill
#中止音乐
execute as @a at @s if score @s djzc.option matches 14 run function djzc444:option/do_stop_music

#对话框
execute as @a at @s if score @s djzc.option matches 8 run function djzc444:dialog/scoreboard_dialog
execute as @a at @s if score @s djzc.option matches 15 run function djzc444:dialog/user_dialog
execute as @a at @s if score @s djzc.option matches 16 run function djzc444:dialog/tp_dialog
execute as @a at @s if score @s djzc.option matches 17 run function djzc444:dialog/manage_dialog