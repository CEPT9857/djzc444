gamerule command_block_output false
gamerule mob_griefing false
schedule clear djzc444:game/music_stop
stopsound @a
function djzc444:game/time_initialize
function djzc444:game/flow_begin

execute as @a[team=CT] run spawnpoint @s -405 30 -809
execute as @a[team=T] run spawnpoint @s -397 30 -809
#设定双方默认重生点

tp @a[team=CT] -405 30 -809
tp @a[team=T] -397 30 -809
#传送到基地

bossbar set minecraft:time visible true
bossbar set minecraft:time value 900

fill -467 62 -764 -469 62 -758 netherite_block
#填平D点大坑

scoreboard players reset @a CT
scoreboard players reset @a occupy
scoreboard players reset @a dz_die
scoreboard players reset @a T
scoreboard players reset @a dz_kill
scoreboard players reset @a gameflow
scoreboard players reset @a 5
#重置必要的计分板

gamemode adventure @a[team=T]
gamemode adventure @a[team=CT]

advancement grant @a only djzc444:fight/root
advancement revoke @a from djzc444:fight/count

setblock -366 65 -759 minecraft:blue_stained_glass
setblock -304 68 -855 minecraft:blue_stained_glass
setblock -259 61 -772 minecraft:blue_stained_glass
setblock -458 60 -761 minecraft:blue_stained_glass
#还原信标光柱为蓝色

setblock -395 27 -768 air
setblock -398 27 -768 air
setblock -395 27 -754 air
setblock -398 27 -754 air
scoreboard players set A gameflow 0
scoreboard players set B gameflow 0
scoreboard players set A+B gameflow 0
scoreboard players set B+ gameflow 0
scoreboard players set C gameflow 0
scoreboard players set C+ gameflow 0
scoreboard players set D gameflow 0
#还原四个点及启动器在游戏流程计算器的状态
scoreboard players set C1 gameflow 0
scoreboard players set C2 gameflow 0
scoreboard players set C3 gameflow 0
scoreboard players set C123 gameflow 0
scoreboard players set D1 gameflow 0
scoreboard players set D2 gameflow 0
scoreboard players set D3 gameflow 0
scoreboard players set D123 gameflow 0
#启动器在游戏流程计算器的状态
data merge entity @e[x=-385,y=63,z=-690,limit=1,type=minecraft:glow_item_frame,distance=..1] {ItemRotation:0}
data merge entity @e[x=-350,y=58,z=-767,limit=1,type=minecraft:glow_item_frame,distance=..1] {ItemRotation:0}
data merge entity @e[x=-378,y=81,z=-873,limit=1,type=minecraft:glow_item_frame,distance=..1] {ItemRotation:0}

data merge entity @e[x=-447,y=73,z=-728,limit=1,type=minecraft:glow_item_frame,distance=..1] {ItemRotation:0}
data merge entity @e[x=-433,y=66,z=-760,limit=1,type=minecraft:glow_item_frame,distance=..1] {ItemRotation:0}
data merge entity @e[x=-461,y=63,z=-813,limit=1,type=minecraft:glow_item_frame,distance=..1] {ItemRotation:0}
#重置启动器展示框

effect clear @e[type=minecraft:armor_stand]

gamemode adventure @a[team=T]
gamemode adventure @a[team=CT]