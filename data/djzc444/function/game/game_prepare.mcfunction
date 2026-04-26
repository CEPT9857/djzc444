#这一段是Deepseek生成的
# 重置统计用虚拟玩家的分数
scoreboard players set #total_players prepare 0
scoreboard players set #ready_players prepare 0

# 统计所有玩家总数（包括所有在线玩家）
execute as @a run scoreboard players add #total_players prepare 1

# 统计准备就绪的玩家数（这里假设 prepare 分数为 1 表示已准备）
execute as @a if score @s prepare matches 1 run scoreboard players add #ready_players prepare 1
# 统计prepare分数不为0的玩家数

# 只有当存在至少一名玩家，且所有在线玩家都已准备时，才启动游戏
execute if score #total_players prepare matches 1.. if score #total_players prepare = #ready_players prepare run function djzc444:game/start