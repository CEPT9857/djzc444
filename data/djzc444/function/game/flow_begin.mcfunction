title @a title [{translate:"djzc.msg.begin",fallback:"冬季战场初始化","color":"aqua"}]
title @p subtitle [{translate:"djzc.msg.begin.desc",fallback:"加油，特种兵","color":"dark_aqua"}]

scoreboard players set game gameflow 1
#修改游戏流程计算器，提示游戏开始

playsound minecraft:music_disc.relic music @a[team=CT] -386.00 70.39 -755.52 1000
playsound minecraft:music_disc.wait music @a[team=T] -386.00 70.39 -755.52 1000
#占戈哥欠走己！