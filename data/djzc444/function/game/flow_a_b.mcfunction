scoreboard players set A+B gameflow 0
stopsound @a
scoreboard players set A gameflow -1
scoreboard players set B gameflow -1
scoreboard players set B+ gameflow 1

title @a title [{"text":"A点和B点已被T方占领","color":"red"}]
title @a[team=T] subtitle [{"text":"进攻C点启动器","color":"dark_aqua"}]
title @a[team=CT] subtitle [{"text":"防守C点启动器","color":"dark_aqua"}]
tellraw @a {text:"C点启动器的位置已被高亮，旋转物品展示框会激活启动器。若启动器被全部激活，C点就可以被T阵营占领",color:"green"}
#友情提示

effect give @e[tag=c1] minecraft:glowing infinite
effect give @e[tag=c2] minecraft:glowing infinite
effect give @e[tag=c3] minecraft:glowing infinite
#高亮启动器旁的盔甲架

playsound minecraft:entity.piglin_brute.death player @a[team=CT] -386.00 70.39 -755.52 1000
playsound minecraft:entity.piglin_brute.angry player @a[team=T] -386.00 70.39 -755.52 1000
playsound minecraft:music_disc.pigstep music @a -386.00 70.39 -755.52 1000
