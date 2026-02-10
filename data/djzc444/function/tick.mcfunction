execute if score game gameflow matches 1 run function djzc444:game/time_game
#游戏主时钟

execute if score game gameflow matches 0 run function djzc444:game/game_prepare
#准备系统

scoreboard players enable @a ctmsg
scoreboard players enable @a tmsg
scoreboard players enable @a prepare
#开放trigger类计分板权限

function djzc444:game/game_teammsg
function djzc444:game/lib_msgbook
#步话机

execute as @a[scores={jump=1..,sneak=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{tags:[fly]}}}}] run function djzc444:game/lib_fly
#一键三连航空版 垂直机动检测

function djzc444:game/lib_nova
#新星
function djzc444:game/lib_sanlian3
#一键三连 MK·III

function djzc444:game/lib_boom_marker
#轰炸指示器

execute as @a[scores={r_click=1..}] run function djzc444:game/lib_missile_ga
execute as @a[scores={r_click1=1..}] run function djzc444:game/lib_missile_aa
execute as @a[scores={r_click2=1..}] run function djzc444:game/lib_missile_ag
function djzc444:game/lib_missile_track
#导弹系统

function djzc444:game/death_scoreboard
#阵亡计分板

execute if score A gameflow matches 0 run function djzc444:points/a_point
execute if score B gameflow matches 0 run function djzc444:points/b_point
execute if score C gameflow matches 1 run function djzc444:points/c_point
execute if score D gameflow matches 1 run function djzc444:points/d_point
#占点系统
execute if score B+ gameflow matches 1 run function djzc444:game/game_starter_c
execute if score C+ gameflow matches 1 run function djzc444:game/game_starter_d
#启动器系统