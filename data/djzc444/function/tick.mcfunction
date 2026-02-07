scoreboard players enable @a ctmsg
scoreboard players enable @a tmsg
scoreboard players enable @a prepare
#开放trigger类计分板权限

execute as @a at @s if score @s ctmsg matches 1 run function djzc444:ctmsg/ctmsg_allow
execute as @a at @s if score @s ctmsg matches 2 run function djzc444:ctmsg/ctmsg_oppose
execute as @a at @s if score @s ctmsg matches 3 run function djzc444:ctmsg/ctmsg_rush
execute as @a at @s if score @s ctmsg matches 4 run function djzc444:ctmsg/ctmsg_retreat
execute as @a at @s if score @s ctmsg matches 5 run function djzc444:ctmsg/ctmsg_enemy
execute as @a at @s if score @s ctmsg matches 6 run function djzc444:ctmsg/ctmsg_sos
execute as @a at @s if score @s ctmsg matches 7 run function djzc444:ctmsg/ctmsg_cover
execute as @a at @s if score @s ctmsg matches 8 run function djzc444:ctmsg/ctmsg_ciallo
execute as @a at @s if score @s ctmsg matches 9 run function djzc444:ctmsg/ctmsg_attack_a
execute as @a at @s if score @s ctmsg matches 10 run function djzc444:ctmsg/ctmsg_attack_b
execute as @a at @s if score @s ctmsg matches 11 run function djzc444:ctmsg/ctmsg_attack_c
execute as @a at @s if score @s ctmsg matches 12 run function djzc444:ctmsg/ctmsg_attack_d
execute as @a at @s if score @s ctmsg matches 13 run function djzc444:ctmsg/ctmsg_defend_a
execute as @a at @s if score @s ctmsg matches 14 run function djzc444:ctmsg/ctmsg_defend_b
execute as @a at @s if score @s ctmsg matches 15 run function djzc444:ctmsg/ctmsg_defend_c
execute as @a at @s if score @s ctmsg matches 16 run function djzc444:ctmsg/ctmsg_defend_d
#CT消息
execute as @a at @s if score @s tmsg matches 1 run function djzc444:tmsg/tmsg_allow
execute as @a at @s if score @s tmsg matches 2 run function djzc444:tmsg/tmsg_oppose
execute as @a at @s if score @s tmsg matches 3 run function djzc444:tmsg/tmsg_rush
execute as @a at @s if score @s tmsg matches 4 run function djzc444:tmsg/tmsg_retreat
execute as @a at @s if score @s tmsg matches 5 run function djzc444:tmsg/tmsg_enemy
execute as @a at @s if score @s tmsg matches 6 run function djzc444:tmsg/tmsg_sos
execute as @a at @s if score @s tmsg matches 7 run function djzc444:tmsg/tmsg_cover
execute as @a at @s if score @s tmsg matches 8 run function djzc444:tmsg/tmsg_ciallo
execute as @a at @s if score @s tmsg matches 9 run function djzc444:tmsg/tmsg_attack_a
execute as @a at @s if score @s tmsg matches 10 run function djzc444:tmsg/tmsg_attack_b
execute as @a at @s if score @s tmsg matches 11 run function djzc444:tmsg/tmsg_attack_c
execute as @a at @s if score @s tmsg matches 12 run function djzc444:tmsg/tmsg_attack_d
execute as @a at @s if score @s tmsg matches 13 run function djzc444:tmsg/tmsg_defend_a
execute as @a at @s if score @s tmsg matches 14 run function djzc444:tmsg/tmsg_defend_b
execute as @a at @s if score @s tmsg matches 15 run function djzc444:tmsg/tmsg_defend_c
execute as @a at @s if score @s tmsg matches 16 run function djzc444:tmsg/tmsg_defend_d
#T消息

execute as @a[scores={jump=1..,sneak=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{tags:[fly]}}}}] run function djzc444:game/lib_fly
#一键三连航空版 垂直机动检测

execute as @a[scores={r_click=1..}] run function djzc444:game/lib_missile_ga
execute as @a[scores={r_click1=1..}] run function djzc444:game/lib_missile_aa
execute as @a[scores={r_click2=1..}] run function djzc444:game/lib_missile_ag
function djzc444:game/lib_missile_track
#导弹系统
function djzc444:points/a_point
function djzc444:points/b_point
function djzc444:points/c_point
function djzc444:points/d_point
#占点系统