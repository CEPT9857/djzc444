title @a title [{"text":"冬季战场初始化","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @p subtitle [{"text":"加油，特种兵","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

fill -378 65 -762 -378 66 -760 minecraft:netherite_block
fill -467 62 -764 -469 62 -758 minecraft:netherite_block
fill -428 66 -658 -430 65 -658 minecraft:glass
fill -423 67 -658 -425 66 -658 minecraft:air
fill -425 67 -666 -423 66 -666 air
fill -421 67 -666 -419 66 -666 air
#关闭C点和D点
fill -419 67 -658 -421 66 -658 minecraft:air
fill -432 66 -658 -434 65 -658 minecraft:glass
fill -430 66 -666 -428 65 -666 minecraft:glass
fill -434 66 -666 -432 65 -666 minecraft:glass

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
scoreboard players reset @a CT
scoreboard players reset @a occupy
scoreboard players reset @a dz_die
scoreboard players reset @a T
scoreboard players reset @a dz_kill
gamemode adventure @a[team=T]
gamemode adventure @a[team=CT]
advancement revoke @a from djzc444:fight/count

setblock -366 65 -759 minecraft:blue_stained_glass
setblock -304 68 -855 minecraft:blue_stained_glass
setblock -259 61 -772 minecraft:blue_stained_glass
setblock -458 60 -761 minecraft:blue_stained_glass
setblock -395 27 -768 air
setblock -398 27 -768 air
setblock -395 27 -754 air
setblock -398 27 -754 air
#还原四个点
setblock -461 54 -758 minecraft:air
setblock -460 54 -761 minecraft:air
setblock -461 54 -764 minecraft:air
setblock -372 57 -762 air
setblock -373 57 -759 air
setblock -372 57 -756 air

setblock -388 20 -754 minecraft:air
effect clear @e[type=minecraft:armor_stand]
scoreboard players reset @a 5
