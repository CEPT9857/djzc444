execute store result bossbar minecraft:time value run scoreboard players get 秒 time3
#将时间写入bossbar

scoreboard players remove 红石刻 time 1
scoreboard players remove 红石刻 time3 1
#每tick减少1红时刻
execute if score 红石刻 time3 <= 1000 time3 run scoreboard players remove 秒 time3 1
execute if score 红石刻 time3 <= 1000 time3 run function djzc444:second
execute if score 红石刻 time3 <= 1000 time3 run scoreboard players set 红石刻 time3 1020
#如果红时刻<=1000，红时刻重置为1020，时间减一秒
execute if score 秒 time3 = 0 time3 run bossbar set minecraft:time visible false
#如果秒=0，则关闭显示剩余时间的bossbar

execute if score 红石刻 time <= 红石刻 time2 run scoreboard players remove 秒 time 1
execute if score 红石刻 time <= 红石刻 time2 run scoreboard players set 红石刻 time 1020
#如果#如果红时刻<=1000，红时刻变回1020，时间减一秒
execute if score 秒 time <= 秒 time2 run scoreboard players remove 分 time 1
execute if score 秒 time <= 秒 time2 run scoreboard players set 秒 time 60
#如果秒<=0，秒数重置为60，时间减一分钟

execute if score 分 time < 分 time2 run function djzc444:game/end_ct
execute if score 分 time < 分 time2 run scoreboard players set 分 time 999
#如果分钟小于0，分钟重置为999，并判定T战败