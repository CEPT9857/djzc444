execute if score game djzc.gameflow matches 1 run function djzc444:game/time_game
#游戏主时钟
function djzc444:game/time_custom
#常驻时钟
execute if score game djzc.gameflow matches 0 run function djzc444:game/game_prepare
#准备系统

execute as @a[gamemode=survival] run gamemode adventure
#把所有生存模式玩家改成冒险模式-反破坏

scoreboard players enable @a djzc.ctmsg
scoreboard players enable @a djzc.tmsg
scoreboard players enable @a djzc.prepare
scoreboard players enable @a djzc.option
scoreboard players enable @a djzc.type_choose
scoreboard players enable @a djzc.tp
scoreboard players enable @a djzc.eula
#开放trigger类计分板权限

function djzc444:game/game_teammsg
function djzc444:game/game_userbook
function djzc444:game/lib_books
#步话机
#成员用书
execute if score debug djzc.option matches 0 as @a[predicate=djzc444:height_under40] run function djzc444:game/game_type_choose
#兵种选择系统
execute if score debug djzc.option matches 1 as @a run function djzc444:game/game_type_choose
#debug兵种选择系统
execute if score debug djzc.option matches 0 as @a[predicate=djzc444:height_under40] run function djzc444:game/game_tp_system
#传送系统
execute if score debug djzc.option matches 1 as @a run function djzc444:game/game_tp_system
#debug传送系统

execute as @a at @s if score @s djzc.eula matches -1 run function djzc444:option/do_eula
#EULA后（eula=-1）选择阵营

execute as @a[predicate=djzc444:select_fly,predicate=djzc444:jump_sneak] run function djzc444:game/lib_fly
#一键三连航空版/骑兵枪 垂直机动检测

function djzc444:game/lib_nova
#新星
function djzc444:game/lib_sanlian3
#一键三连 MK·III

function djzc444:game/lib_boom_marker
#轰炸指示器

#function djzc444:game/lib_bzd
#新版板载弹（制作中）

function djzc444:game/lib_smoke
#烟雾弹

function djzc444:game/lib_allay_drone
function djzc444:game/lib_swarm_drones
function djzc444:game/lib_jam_egg
#无人机系统

function djzc444:game/death_scoreboard
#阵亡计分板

execute if score A djzc.gameflow matches 0 run function djzc444:points/a_point
execute if score B djzc.gameflow matches 0 run function djzc444:points/b_point
execute if score C djzc.gameflow matches 1 run function djzc444:points/c_point
execute if score D djzc.gameflow matches 1 run function djzc444:points/d_point
#占点系统
execute if score B+ djzc.gameflow matches 1 run function djzc444:game/game_starter_c
execute if score C+ djzc.gameflow matches 1 run function djzc444:game/game_starter_d
#启动器系统