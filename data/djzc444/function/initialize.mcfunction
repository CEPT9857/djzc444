function djzc444:option/boost
#启用boost

scoreboard players set debug 3 0
#复位debug模式

scoreboard players set harmony 3 1
#复位和谐冬战

scoreboard players set jzb 5 1
scoreboard players set jjs 5 1
scoreboard players set fkb 5 1
scoreboard players set ltjd 5 1
scoreboard players set scj 5 1
scoreboard players set yqb 5 1
scoreboard players set ggne 5 1
scoreboard players set bzb 5 1
#复位兵种禁用系统

function djzc444:second
#运行一次second函数，输入初始数值

function djzc444:game/time_initialize
#运行一次时间初始化函数，输入初始数值

function djzc444:game/start
function djzc444:game/end_custom
function djzc444:game/music_stop
#启动一次游戏，然后关掉,输入必要参数

tellraw @a {translate:"djzc.msg.initialize",fallback:"检测到该冬季战场副本首次启动，请按G键打开冬战成员用书，或打开README.md阅读详细信息",color:green}

scoreboard players set initialize 3 1
#退出初始化状态