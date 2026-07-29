#射线检测 - 碰撞检测
#@s = 射线标记实体，位于新的检测位置
#检测方块碰撞和/或实体碰撞
#传递 storage djzc555:raycast config 给 step 用于宏步长

#方块检测（类型0和2）：检查当前位置是否为可替换方块（空气/水/草等）
#使用 #minecraft:replaceable 与原轰炸指示器逻辑保持一致
execute unless score @s djzc555.ray_type matches 1 unless block ~ ~ ~ #minecraft:replaceable run return run function djzc555:raycast/internal/hit

#实体检测（类型1和2）：检查附近是否有施法者以外的实体
execute unless score @s djzc555.ray_type matches 0 at @s if entity @e[tag=!djzc555.ray_caster,distance=..0.3,limit=1] run return run function djzc555:raycast/internal/hit

#未命中：递增步数
scoreboard players add @s djzc555.ray_dist 1

#达到最大距离 → 未命中
execute if score @s djzc555.ray_dist >= @s djzc555.ray_max run return run function djzc555:raycast/internal/miss

#继续步进（如果标记仍然存在，传递storage用于宏步长）
execute if entity @s run function djzc555:raycast/internal/step with storage djzc555:raycast config
