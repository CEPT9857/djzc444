execute as @a at @s if score @s 3 matches 1 run function djzc444:option/scoreboard_dz_kill
execute as @a at @s if score @s 3 matches 2 run function djzc444:option/scoreboard_dz_die
execute as @a at @s if score @s 3 matches 3 run function djzc444:option/scoreboard_ct
execute as @a at @s if score @s 3 matches 4 run function djzc444:option/scoreboard_t

execute as @a at @s if score @s 3 matches 5 run function djzc444:option/scoreboard_fight
execute as @a at @s if score @s 3 matches 6 run function djzc444:option/scoreboard_fight_win
execute as @a at @s if score @s 3 matches 7 run function djzc444:option/scoreboard_fight_lost
execute as @a at @s if score @s 3 matches 8 run function djzc444:option/scoreboard_prepare

execute if score game gameflow matches 0 as @a at @s if score @s 3 matches 9 run function djzc444:option/do_join_ct
execute if score game gameflow matches 0 as @a at @s if score @s 3 matches 10 run function djzc444:option/do_join_t
execute as @a at @s if score @s 3 matches 11 run function djzc444:option/do_choose_type
execute as @a at @s if score @s 3 matches 12 run function djzc444:option/do_msg

execute as @a at @s if score @s 3 matches 13 run function djzc444:option/do_stop_music
execute as @a at @s if score @s 3 matches 14 run function djzc444:option/do_kill

execute if score game gameflow matches 1 as @a[team=T] at @s if score @s 3 matches 9 run function djzc444:option/no_run
execute if score game gameflow matches 1 as @a[team=CT] at @s if score @s 3 matches 10 run function djzc444:option/no_run

execute as @a at @s if score @s 3 matches 15 run function djzc444:dialog/user_dialog
execute as @a at @s if score @s 3 matches 16 run function djzc444:dialog/tp_dialog