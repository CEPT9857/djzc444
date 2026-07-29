#轰炸指示器专用射线检测
#参数与原 lib_boom_marker 完全一致：
#  步长 = 1格（ray_step=10 → 宏替换为1.0）
#  方块过滤 = #minecraft:replaceable（可替换方块穿透）
#  最大距离 = 400格（ray_max=400步 × 1格/步）
#用法：execute as <caster> at @s run function djzc555:raycast/ground
#结果写入 storage djzc555:raycast result

#设置射线类型为方块检测
scoreboard players set @s djzc555.ray_type 0

#步长设为10（=1.0格/步），与原轰炸指示器 tp ^ ^ ^1 行为一致
scoreboard players set @s djzc555.ray_step 10

#最大距离400步 = 400格，与原轰炸指示器 djzc.time2=400 行为一致
scoreboard players set @s djzc555.ray_max 400

#启用射线路径粒子特效（防止玩家看不见）
scoreboard players set @s djzc555.ray_particle 1

#启动射线检测
function djzc555:raycast/internal/start
