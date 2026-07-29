#射线检测 - 步进函数（递归·宏）
#@s = 射线标记实体，位于当前检测位置
#使用宏 $(step) 实现可配置步长
#调用需要：function ... with storage djzc555:raycast config

#如果标记已被清除则停止
execute unless entity @s run return fail

#沿存储的视角方向前进 $(step) 格
$execute at @s rotated as @s run tp @s ^ ^ ^$(step)

#射线路径粒子特效（由 djzc555.ray_particle 计分板配置：0=关闭 1=end_rod）
execute if score @s djzc555.ray_particle matches 1.. at @s run particle minecraft:end_rod ~ ~ ~ 0 0.1 0 1 0 force

#在新位置执行碰撞检测（传递storage给check→step的递归链）
execute as @s at @s run function djzc555:raycast/internal/check with storage djzc555:raycast config
