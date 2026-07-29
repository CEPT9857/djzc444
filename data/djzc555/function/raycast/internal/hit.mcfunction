#射线检测 - 命中处理
#@s = 射线标记实体，位于命中位置
#将命中结果写入 storage djzc555:raycast result

#写入命中结果
data modify storage djzc555:raycast result set value {hit:1b}

#记录命中坐标（保留3位小数精度）
execute store result storage djzc555:raycast result.x double 0.001 run data get entity @s Pos[0] 1000
execute store result storage djzc555:raycast result.y double 0.001 run data get entity @s Pos[1] 1000
execute store result storage djzc555:raycast result.z double 0.001 run data get entity @s Pos[2] 1000

#记录命中距离（步数×0.1=实际距离）
execute store result storage djzc555:raycast result.distance double 0.1 run scoreboard players get @s djzc555.ray_dist

#如果是实体检测，记录命中的实体UUID
execute if score @s djzc555.ray_type matches 1.. at @s run data modify storage djzc555:raycast result.entity set from entity @e[tag=!djzc555.ray_caster,distance=..0.5,limit=1,sort=nearest] UUID

#获取命中方块的方块状态
execute if score @s djzc555.ray_type matches 0 run data modify storage djzc555:raycast result.block set from block ~ ~ ~

#清理：移除施法者标签
tag @a[tag=djzc555.ray_caster,limit=1] remove djzc555.ray_caster

#清理：清除射线标记实体
kill @s