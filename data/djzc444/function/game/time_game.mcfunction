execute store result bossbar minecraft:time value run scoreboard players get 秒 time3
#将时间写入bossbar

scoreboard players remove 刻 time 1
scoreboard players remove 刻 time3 1
#每tick减少1刻
execute if score 刻 time3 <= 0 time3 run scoreboard players remove 秒 time3 1
execute if score 刻 time3 <= 0 time3 run scoreboard players set 刻 time3 20
#如果刻<=0，刻重置为20，时间减一秒
execute if score 秒 time3 = 0 time3 run bossbar set minecraft:time visible false
#如果秒=0，则关闭显示剩余时间的bossbar

execute if score 刻 time <= 0 time3 run scoreboard players remove 秒 time 1
execute if score 刻 time <= 0 time3 run scoreboard players set 刻 time 20
#如果#如果刻<=0，刻变回20，时间减一秒
execute if score 秒 time <= 0 time3 run scoreboard players remove 分 time 1
execute if score 秒 time <= 0 time3 run scoreboard players set 秒 time 60
#如果秒<=0，秒数重置为60，时间减一分钟

execute if score 分 time < 0 time3 run function djzc444:game/end_ct
#如果分钟小于0，判定T战败