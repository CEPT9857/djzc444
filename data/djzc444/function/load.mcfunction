tellraw @a {text:"冬季战场v1.0.5加载成功！",color:green}
#加载信息

advancement grant @a only djzc444:fight/root
advancement grant @a from djzc444:intro/root
#初始成就

scoreboard objectives add gameflow dummy
#游戏流程计算器

scoreboard objectives add time dummy "剩余时间"
scoreboard objectives add time2 dummy "战役时间"
scoreboard objectives add time3 dummy "剩余时间"
#初始时钟

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
#行为检测类计分板

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

bossbar add minecraft:a "a"
bossbar set minecraft:a max 30
bossbar set minecraft:a style notched_6

bossbar add minecraft:b "b"
bossbar set minecraft:b max 30
bossbar set minecraft:b style notched_6

bossbar add minecraft:c "c"
bossbar set minecraft:c max 30
bossbar set minecraft:c style notched_6

bossbar add minecraft:d "d"
bossbar set minecraft:d max 30
bossbar set minecraft:d style notched_6
#bossbar配置

function djzc444:advancement/detection
#成就检测