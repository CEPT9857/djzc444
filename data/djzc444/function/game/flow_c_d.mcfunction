stopsound @a
playsound minecraft:music_disc.blocks music @a -386.00 70.39 -755.52 1000

title @a title [{translate:"djzc.msg.c_d",fallback:"C点已被T方占领","color":"red"}]
title @a[team=T] subtitle [{translate:"djzc.msg.c_d.t",fallback:"进攻D点启动器","color":"dark_aqua"}]
title @a[team=CT] subtitle [{translate:"djzc.msg.c_d.ct",fallback:"防守D点启动器","color":"dark_aqua"}]
tellraw @a {translate:"djzc.msg.c_d.desc",fallback:"D点启动器的位置已被高亮，旋转物品展示框会激活启动器。若启动器被全部激活，D点就可以被T阵营占领",color:"green"}
#友情提示

effect give @e[tag=d1] minecraft:glowing infinite
effect give @e[tag=d2] minecraft:glowing infinite
effect give @e[tag=d3] minecraft:glowing infinite
#高亮启动器旁的盔甲架

playsound minecraft:entity.piglin_brute.death player @a[team=CT] -386.00 70.39 -755.52 1000
playsound minecraft:entity.piglin_brute.angry player @a[team=T] -386.00 70.39 -755.52 1000