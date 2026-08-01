execute as @s[x=-36,y=68,z=-844,dx=-12,dy=3,dz=6] run scoreboard players remove @s djzc.airport_t 1
#如果玩家在机场内，开始倒计时

execute if score @s[team=T,tag=AF] djzc.airport_t <= 0 djzc.time3 at @s run function djzc666:weapon/missile_aa
execute if score @s[team=T,tag=AF] djzc.airport_t <= 0 djzc.time3 at @s run function djzc666:weapon/missile_ag
execute if score @s[team=T,tag=AF] djzc.airport_t <= 0 djzc.time3 at @s run function djzc444:weapon/rocket_10
execute if score @s[team=T,tag=AF] djzc.airport_t <= 0 djzc.time3 at @s run function djzc444:weapon/wea_jam_egg
#机场停留30秒后，为己方空军单位发放补给

execute if score @s[team=T,tag=AF] djzc.airport_t <= 0 djzc.time3 at @s run playsound minecraft:entity.villager.celebrate player @s ~ ~ ~ 1
#音效

execute if score @s djzc.airport_t <= 0 djzc.time3 run scoreboard players set @s djzc.airport_t 30
#机场停留30秒后，重置进度

execute as @s unless entity @s[x=-36,y=68,z=-844,dx=-12,dy=3,dz=6] run scoreboard players set @s djzc.airport_t 30
#如果玩家不在机场，重置进度

execute as @s if entity @s[x=-36,y=68,z=-844,dx=-12,dy=3,dz=6,team=T,tag=AF] run title @s[team=T,tag=AF] actionbar [{translate:"djzc.msg.airport_supply",fallback:"补给倒计时："},{score:{objective:djzc.airport_t,name:"@s"}},{translate:"djzc.dialog.time_second",fallback:"秒"}]
#机场倒计时有关信息

execute as @s[x=-36,y=68,z=-844,dx=-12,dy=3,dz=6,team=T] at @s if entity @e[distance=..75,team=CT,tag=AF] run advancement grant @s only djzc666:tool/missile_sam
#如果机场里有T，且周围有敌方空军单位，发射地对空导弹

#和秒有关的函数，交给second.mcfunction计时