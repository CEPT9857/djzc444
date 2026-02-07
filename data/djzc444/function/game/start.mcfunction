gamerule command_block_output false
gamerule mob_griefing false
stopsound @a
function djzc444:game/time_initialize
function djzc444:game/flow_begin

bossbar set minecraft:time visible true
bossbar set minecraft:time value 900

function djzc444:ct_tp
function djzc444:t_tp


#熔断C点玩家识别器

fill -467 62 -764 -469 62 -758 netherite_block
fill -428 66 -658 -430 65 -658 glass
fill -423 67 -658 -425 66 -658 air
fill -425 67 -666 -423 66 -666 air
fill -421 67 -666 -419 66 -666 air
#关闭C点和D点
fill -419 67 -658 -421 66 -658 minecraft:air
fill -432 66 -658 -434 65 -658 minecraft:glass
fill -430 66 -666 -428 65 -666 minecraft:glass
fill -434 66 -666 -432 65 -666 minecraft:glass

scoreboard players reset @a CT
scoreboard players reset @a occupy
scoreboard players reset @a dz_die
scoreboard players reset @a T
scoreboard players reset @a dz_kill
scoreboard players reset @a gameflow
scoreboard players reset @a 5

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
#还原四个点在游戏流程计算器的状态
setblock -461 54 -758 air
setblock -460 54 -761 air
setblock -461 54 -764 air

setblock -372 57 -762 air
setblock -373 57 -759 air
setblock -372 57 -756 air

setblock -388 20 -754 minecraft:air
#重置T方战败识别器
effect clear @e[type=minecraft:armor_stand]

gamemode adventure @a[team=T]
gamemode adventure @a[team=CT]