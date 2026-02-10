scoreboard players set #total_players prepare 0
scoreboard players set #ready_players prepare 0
# 重置统计用虚拟玩家的分数

execute as @a run scoreboard players add #total_players prepare 1
# 统计所有玩家总数

execute as @a if score @s prepare matches 1 run scoreboard players add #ready_players prepare 1
# 统计prepare分数不为0的玩家数

execute if score #total_players prepare = #ready_players prepare run function djzc444:game/start
# 比较两者数量,然后启动游戏
#这一段是Deepseek生成的↑