scoreboard players remove 刻 djzc.time2 1
#每tick减少1刻
execute if score 刻 djzc.time2 <= 0 djzc.time3 run scoreboard players remove 秒 djzc.time2 1
execute if score 刻 djzc.time2 <= 0 djzc.time3 run function djzc444:second
execute if score 刻 djzc.time2 <= 0 djzc.time3 run scoreboard players set 刻 djzc.time2 20
#如果红时刻<=0，刻重置为20，时间减一秒
execute if score 秒 djzc.time2 < 0 djzc.time3 run scoreboard players set 秒 djzc.time2 1
#如果秒<0，秒数重置为1

#挂接到常驻时钟的代码
#轰炸指示器
execute as @e[tag=mark2] run scoreboard players remove @s djzc.time2 1
execute as @e[tag=mark3] run scoreboard players remove @s djzc.time2 1