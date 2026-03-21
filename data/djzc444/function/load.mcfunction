tellraw @a {translate:"djzc.msg.load",fallback:"冬季战场v1.0.6加载成功！",color:green}
tellraw @a {translate:resourcepack.loaded.detect,fallback:"您目前未安装冬季战场相关资源包，可能会缺失部分游戏体验",color:"blue"}
execute unless score boost 3 matches 1 run tellraw @a [{translate:"djzc.msg.load_unboost",fallback:"检测到您未处于boost模式，点击可启用boost",color:"red",hover_event:{action:"show_text",value:{translate:"djzc.msg.load_unboost.desc",fallback:"启用后，将关闭怪物生成等游戏规则，这是我们推荐的游戏模式"}},click_event:{action:"run_command",command:"function djzc444:option/boost"}}]
execute if score boost 3 matches 1 run tellraw @a [{translate:"djzc.msg.load_boost",fallback:"检测到您已处于boost模式，点击可禁用boost",color:"green",hover_event:{action:"show_text",value:{translate:"djzc.msg.load_boost.desc",fallback:"禁用后，游戏将启用怪物破坏地形等规则，建议您在此之前备份存档"}},click_event:{action:"run_command",command:"function djzc444:option/unboost"}}]

execute if score debug 3 matches 1 run tellraw @a [{translate:"djzc.msg.load_debug",fallback:"检测到您处于debug模式，点击可禁用debug",color:"green",hover_event:{action:"show_text",value:{translate:"djzc.msg.load_debug.desc",fallback:"禁用后，兵种选择和传送系统仅在玩家Y<40时可用"}},click_event:{action:"run_command",command:"scoreboard players set debug 3 0"}}]
execute unless score harmony 3 matches 0 run tellraw @a {translate:"djzc.msg.load_harmony",fallback:"健康游戏忠告:抵制不良游戏，拒绝盗版游戏。注意自我保护，谨防受骗上当。适度游戏益脑，沉迷游戏伤身。合理安排时间，享受健康生活。"}
#加载信息

gamerule keep_inventory true
gamerule players_sleeping_percentage 33

advancement grant @a only djzc444:fight/root
advancement grant @a from djzc444:intro/root
#初始成就

scoreboard players set game gameflow 0
#复位游戏流程计算器

scoreboard players set debug 3 0
#复位debug模式

scoreboard objectives add gameflow dummy
#游戏流程计算器

scoreboard objectives add time dummy {translate:"djzc.scoreboard.time",fallback:"剩余时间"}
scoreboard objectives add time2 dummy {translate:"djzc.scoreboard.time2",fallback:"战役时间"}
scoreboard objectives add time3 dummy {translate:"djzc.scoreboard.time3",fallback:"剩余时间"}
#初始时钟

scoreboard objectives add 1 playerKillCount {translate:"djzc.scoreboard.1",fallback:"击杀数"}
scoreboard objectives add 2 deathCount {translate:"djzc.scoreboard.2",fallback:"阵亡数"}
scoreboard objectives add 3 trigger {translate:"djzc.scoreboard.3",fallback:"设置"}
#计分板3在老服存档中被设定为经验计分板，在冬战里没有什么作用，故换成了设置
scoreboard objectives add 4 health {translate:"djzc.scoreboard.4",fallback:"cm"}
scoreboard objectives add 5 dummy {translate:"djzc.scoreboard.5",fallback:"兵种价格"}

scoreboard objectives add CT teamkill.red {translate:"djzc.scoreboard.ct",fallback:"击杀数"}
scoreboard objectives add T teamkill.blue {translate:"djzc.scoreboard.t",fallback:"击杀数"}
scoreboard objectives add CT_D_by_T killedByTeam.blue
scoreboard objectives add T_D_by_CT killedByTeam.red
scoreboard objectives add dz_kill playerKillCount {translate:"djzc.scoreboard.dz_kill",fallback:"本局击杀数"}
scoreboard objectives add dz_die deathCount {translate:"djzc.scoreboard.dz_die",fallback:"本局阵亡数"}
scoreboard objectives add dz_die1 dummy

scoreboard objectives add fight dummy {translate:"djzc.scoreboard.fight",fallback:"战斗场次"}
scoreboard objectives add fight_win dummy {translate:"djzc.scoreboard.fight_win",fallback:"胜利场次"}
scoreboard objectives add fight_lost dummy {translate:"djzc.scoreboard.fight_lost",fallback:"失败场次"}
scoreboard objectives add prepare trigger {translate:"djzc.scoreboard.prepare",fallback:"准备"}

scoreboard objectives add eula trigger
#用户协议

scoreboard objectives add tp trigger
scoreboard objectives add type trigger
#传送系统

scoreboard objectives add ctmsg trigger
scoreboard objectives add tmsg trigger
#保证通讯畅通

scoreboard objectives add fight dummy
#战斗次数统计
scoreboard objectives add occupy dummy
#占点次数统计

scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add r_click minecraft.used:minecraft.fishing_rod "r_click"
scoreboard objectives add r_click1 minecraft.used:minecraft.snowball "r_click_snowball"
scoreboard objectives add r_click2 minecraft.used:minecraft.egg "r_click_egg"
scoreboard objectives add r_click5 minecraft.used:minecraft.carrot_on_a_stick "r_click_carrot_on_a_stick"
scoreboard objectives add r_click7 minecraft.used:minecraft.written_book "r_click_written_book"
#行为检测类计分板
scoreboard players set 1 r_click7 1
#常量设置

scoreboard players set 神风特攻 5 1
scoreboard players set 立体机动 5 5
scoreboard players set 1 gameflow 1
#常量设置

team add T
team modify T color dark_red
team add CT
team modify CT color dark_aqua
team modify T friendlyFire false
team modify T seeFriendlyInvisibles true
team modify T nametagVisibility hideForOtherTeams
team modify CT friendlyFire false
team modify CT seeFriendlyInvisibles true
team modify CT nametagVisibility hideForOtherTeams
#创建队伍

bossbar add minecraft:time {translate:"djzc.bossbar.time",fallback:"剩余时间"}
bossbar set minecraft:time max 900
bossbar set minecraft:time style notched_10
bossbar set minecraft:time players @a

bossbar add minecraft:a "a"
bossbar set minecraft:a max 30
bossbar set minecraft:a style notched_6
bossbar set minecraft:a name A

bossbar add minecraft:b "b"
bossbar set minecraft:b max 30
bossbar set minecraft:b style notched_6
bossbar set minecraft:b name B

bossbar add minecraft:c "c"
bossbar set minecraft:c max 30
bossbar set minecraft:c style notched_6
bossbar set minecraft:c name C

bossbar add minecraft:d "d"
bossbar set minecraft:d max 30
bossbar set minecraft:d style notched_6
bossbar set minecraft:d name D
#bossbar配置

team join T @e[tag=c1]
team join T @e[tag=c2]
team join T @e[tag=c3]
team join T @e[tag=d1]
team join T @e[tag=d2]
team join T @e[tag=d3]
#盔甲架入队调色

function djzc444:advancement/detection
#成就检测

execute as @a at @s unless score @s eula matches 1 run dialog show @s djzc444:eula_notice
#显示欢迎界面