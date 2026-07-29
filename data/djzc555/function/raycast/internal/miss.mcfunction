#射线检测 - 未命中处理
#@s = 射线标记实体，已达到最大距离
#将未命中结果（含最终位置）写入 storage djzc555:raycast result

#写入未命中结果
data modify storage djzc555:raycast result set value {hit:0b}

#记录最终坐标（保留3位小数精度，用于轰炸等需要终点位置的场景）
execute store result storage djzc555:raycast result.x double 0.001 run data get entity @s Pos[0] 1000
execute store result storage djzc555:raycast result.y double 0.001 run data get entity @s Pos[1] 1000
execute store result storage djzc555:raycast result.z double 0.001 run data get entity @s Pos[2] 1000

#记录最大距离（步数×0.1=实际距离）
execute store result storage djzc555:raycast result.distance double 0.1 run scoreboard players get @s djzc555.ray_dist

#清理：移除施法者标签
tag @a[tag=djzc555.ray_caster,limit=1] remove djzc555.ray_caster

#清理：清除射线标记实体
kill @s
