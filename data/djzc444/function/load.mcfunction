tellraw @a {translate:"djzc.msg.load",fallback:"冬季战场v1.0.6加载成功！",color:green}
tellraw @a {translate:resourcepack.loaded.detect,fallback:"您目前未安装冬季战场相关资源包，可能会缺失部分游戏体验",color:"blue"}
execute unless score boost djzc.option matches 1 run tellraw @a [{translate:"djzc.msg.load_unboost",fallback:"检测到您未处于boost模式，点击可启用boost",color:"red",hover_event:{action:"show_text",value:{translate:"djzc.msg.load_unboost.desc",fallback:"启用后，将关闭怪物生成等游戏规则，这是我们推荐的游戏模式"}},click_event:{action:"run_command",command:"function djzc444:option/boost"}}]
execute if score boost djzc.option matches 1 run tellraw @a [{translate:"djzc.msg.load_boost",fallback:"检测到您已处于boost模式，点击可禁用boost",color:"green",hover_event:{action:"show_text",value:{translate:"djzc.msg.load_boost.desc",fallback:"禁用后，游戏将启用怪物破坏地形等规则，建议您在此之前备份存档"}},click_event:{action:"run_command",command:"function djzc444:option/unboost"}}]

execute if score debug djzc.option matches 1 run tellraw @a [{translate:"djzc.msg.load_debug",fallback:"检测到您处于debug模式，点击可禁用debug",color:"green",hover_event:{action:"show_text",value:{translate:"djzc.msg.load_debug.desc",fallback:"禁用后，兵种选择和传送系统仅在玩家Y<40时可用"}},click_event:{action:"run_command",command:"scoreboard players set debug djzc.option 0"}}]
execute unless score harmony djzc.option matches 0 run tellraw @a {translate:"djzc.msg.load_harmony",fallback:"健康游戏忠告:抵制不良游戏，拒绝盗版游戏。注意自我保护，谨防受骗上当。适度游戏益脑，沉迷游戏伤身。合理安排时间，享受健康生活。"}
#加载信息

gamerule keep_inventory true
gamerule players_sleeping_percentage 33

advancement grant @a only djzc444:fight/root
advancement grant @a from djzc444:intro/root
#初始成就

execute as @a run spawnpoint @s -245 65 -630
#默认重生点

scoreboard objectives add djzc.gameflow dummy {translate:"djzc.scoreboard.gameflow",fallback:"游戏流程计算器"}
#游戏流程计算器

scoreboard objectives add djzc.time dummy {translate:"djzc.scoreboard.time",fallback:"剩余时间"}
scoreboard objectives add djzc.time2 dummy {translate:"djzc.scoreboard.time2",fallback:"常驻时钟"}
scoreboard objectives add djzc.time3 dummy {translate:"djzc.scoreboard.time3",fallback:"时间计算"}
#初始时钟
scoreboard objectives add djzc.airport_ct dummy {translate:"djzc.scoreboard.airport_ct",fallback:"CT机场计时"}
scoreboard objectives add djzc.airport_t dummy {translate:"djzc.scoreboard.airport_t",fallback:"T机场计时"}
#机场计时

scoreboard objectives add djzc.stat_kill playerKillCount {translate:"djzc.scoreboard.stat_kill",fallback:"击杀数"}
scoreboard objectives add djzc.stat_death deathCount {translate:"djzc.scoreboard.stat_death",fallback:"阵亡数"}
scoreboard objectives add djzc.option trigger {translate:"djzc.scoreboard.option",fallback:"设置"}
scoreboard objectives add djzc.hp health {translate:"djzc.scoreboard.hp",fallback:"cm"}
scoreboard objectives add djzc.type dummy {translate:"djzc.scoreboard.type",fallback:"兵种计算"}

scoreboard objectives add djzc.CT teamkill.dark_red {translate:"djzc.scoreboard.ct",fallback:"击杀数"}
scoreboard objectives add djzc.T teamkill.dark_aqua {translate:"djzc.scoreboard.t",fallback:"击杀数"}
scoreboard objectives add djzc.CT_D_by_T killedByTeam.dark_red
scoreboard objectives add djzc.T_D_by_CT killedByTeam.dark_aqua
scoreboard objectives add djzc.count_kill playerKillCount {translate:"djzc.scoreboard.djzc.count_kill",fallback:"本局击杀数"}
scoreboard objectives add djzc.count_die deathCount {translate:"djzc.scoreboard.djzc.count_die",fallback:"本局阵亡数"}
scoreboard objectives add djzc.count_die1 deathCount

scoreboard objectives add djzc.fight dummy {translate:"djzc.scoreboard.fight",fallback:"战斗场次"}
scoreboard objectives add djzc.fight_win dummy {translate:"djzc.scoreboard.fight_win",fallback:"胜利场次"}
scoreboard objectives add djzc.fight_lost dummy {translate:"djzc.scoreboard.fight_lost",fallback:"失败场次"}
scoreboard objectives add djzc.prepare trigger {translate:"djzc.scoreboard.prepare",fallback:"准备"}

scoreboard objectives add djzc.eula trigger
#用户协议

scoreboard objectives add djzc.tp trigger
#传送系统
scoreboard objectives add djzc.type_choose trigger
#兵种选择

scoreboard objectives add djzc.ctmsg trigger
scoreboard objectives add djzc.tmsg trigger
#保证通讯畅通

scoreboard objectives add djzc.occupy dummy
#占点次数统计

scoreboard objectives add djzc.r_click minecraft.used:minecraft.fishing_rod "r_click"
scoreboard objectives add djzc.r_click1 minecraft.used:minecraft.snowball "r_click_snowball"
scoreboard objectives add djzc.r_click2 minecraft.used:minecraft.egg "r_click_egg"
scoreboard objectives add djzc.r_click3 minecraft.used:minecraft.blue_egg "r_click_blue_egg"
scoreboard objectives add djzc.r_click4 minecraft.used:minecraft.brown_egg "r_click_brown_egg"
scoreboard objectives add djzc.r_click5 minecraft.used:minecraft.carrot_on_a_stick "r_click_carrot_on_a_stick"
scoreboard objectives add djzc.r_click7 minecraft.used:minecraft.written_book "r_click_written_book"
#行为检测类计分板
scoreboard players set 1 djzc.r_click7 1
#常量设置

scoreboard players set 神风特攻 djzc.type 1
scoreboard players set 立体机动 djzc.type 5
scoreboard players set 1 djzc.gameflow 1
#常量设置

team add starter
team modify starter color dark_red
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
bossbar set minecraft:a max 60
bossbar set minecraft:a style notched_6
bossbar set minecraft:a name A

bossbar add minecraft:b "b"
bossbar set minecraft:b max 60
bossbar set minecraft:b style notched_6
bossbar set minecraft:b name B

bossbar add minecraft:c "c"
bossbar set minecraft:c max 60
bossbar set minecraft:c style notched_6
bossbar set minecraft:c name C

bossbar add minecraft:d "d"
bossbar set minecraft:d max 60
bossbar set minecraft:d style notched_6
bossbar set minecraft:d name D
#bossbar配置

team join starter @e[tag=c1]
team join starter @e[tag=c2]
team join starter @e[tag=c3]
team join starter @e[tag=d1]
team join starter @e[tag=d2]
team join starter @e[tag=d3]
#盔甲架入队调色

function djzc444:advancement/detection
#成就检测

function djzc444:game/game_eula
#显示欢迎界面

execute unless score initialize djzc.option matches 1 run function djzc444:initialize
#首次启动时，执行初始化