tellraw @a {text:"冬季战场v1.0.6加载成功！",color:green}
execute if score boost 3 matches 0 run tellraw @a [{text:"检测到您未处于boost模式，点击可启用boost",color:"red",hover_event:{action:"show_text",value:{text:"启用后，将关闭怪物生成等游戏规则，这是我们推荐的游戏模式"}},click_event:{action:"run_command",command:"function djzc444:option/boost"}}]
execute if score boost 3 matches 1 run tellraw @a [{text:"检测到您已处于boost模式，点击可禁用boost",color:"red",hover_event:{action:"show_text",value:{text:"禁用后，游戏将启用怪物破坏地形等规则，建议您在此之前备份存档"}},click_event:{action:"run_command",command:"function djzc444:option/unboost"}}]
#加载信息

gamerule keep_inventory true
gamerule players_sleeping_percentage 33

advancement grant @a only djzc444:fight/root
advancement grant @a from djzc444:intro/root
#初始成就

scoreboard objectives add gameflow dummy
#游戏流程计算器

scoreboard objectives add time dummy "剩余时间"
scoreboard objectives add time2 dummy "战役时间"
scoreboard objectives add time3 dummy "剩余时间"
#初始时钟

scoreboard objectives add 1 playerKillCount "击杀数"
scoreboard objectives add 2 deathCount "阵亡数"
scoreboard objectives add 3 trigger "设置"
#计分板3在老服存档中被设定为经验计分板，在冬战里没有什么作用，故换成了设置
scoreboard objectives add 4 health "cm"
scoreboard objectives add 5 dummy "兵种价格"

scoreboard objectives add CT teamkill.blue "击杀数"
scoreboard objectives add T teamkill.red "击杀数"
scoreboard objectives add CT_D_by_T killedByTeam.red
scoreboard objectives add T_D_by_CT killedByTeam.blue
scoreboard objectives add dz_kill playerKillCount "本局击杀数"
scoreboard objectives add dz_die deathCount "本局阵亡数"
scoreboard objectives add dz_die1 dummy

scoreboard objectives add fight dummy "战斗场次"
scoreboard objectives add fight_win dummy "胜利场次"
scoreboard objectives add fight_lost dummy "失败场次"
scoreboard objectives add prepare trigger "准备"

scoreboard objectives add ctmsg trigger
scoreboard objectives add tmsg trigger
#保证通讯畅通

scoreboard objectives add fight dummy
#战斗次数统计
scoreboard objectives add occupy dummy
#占点次数统计

scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add r_click minecraft.used:minecraft.snowball "r_click"
scoreboard objectives add r_click1 minecraft.used:minecraft.snowball "r_click_snowball"
scoreboard objectives add r_click2 minecraft.used:minecraft.egg "r_click_egg"
scoreboard objectives add r_click5 minecraft.used:minecraft.carrot_on_a_stick "r_click_carrot_on_a_stick"
scoreboard objectives add r_click7 minecraft.used:minecraft.written_book "r_click_written_book"
#行为检测类计分板
scoreboard players set 1 r_click7 1
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

bossbar add minecraft:time "剩余时间"
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