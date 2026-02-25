title @p title [{translate:"djzc.msg.failed_ct",fallback:"CT阵营战败","color":"red"}]
scoreboard players add @a[team=CT] fight_lost 1

title @a[team=T] title [{translate:"djzc.msg.win_t",fallback:"T阵营胜利","color":"blue"}]
scoreboard players add @a[team=T] fight_win 1

tellraw @a {translate:"djzc.msg.win_t.desc",fallback:"T阵营占领了所有战区，T阵营胜利",color:"green"}
#友情提示

stopsound @a
playsound minecraft:entity.wither.death music @a[team=CT] -386.00 70.39 -755.52 1000
playsound entity.ender_dragon.death music @a[team=T] -386.00 70.39 -755.52 1000
#T胜利

function djzc444:game/end_custom