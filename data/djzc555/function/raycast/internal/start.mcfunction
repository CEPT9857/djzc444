#射线检测 - 启动器
#@s = 施法者实体（玩家）
#在施法者眼部生成射线标记实体并开始步进
#步长和最大距离从计分板读取，存入 storage djzc555:raycast config 供宏使用

#给施法者打标签
tag @s add djzc555.ray_caster

#如果没有设置max，给默认值500
execute unless score @s djzc555.ray_max matches 1.. run scoreboard players set @s djzc555.ray_max 500

#如果没有设置step，给默认值1（0.1格精度）
execute unless score @s djzc555.ray_step matches 1.. run scoreboard players set @s djzc555.ray_step 1

#将步长从计分板转换为 storage double（值×0.1=实际格数）
execute store result storage djzc555:raycast config.step double 0.1 run scoreboard players get @s djzc555.ray_step

#在施法者眼部位置生成标记实体
execute anchored eyes positioned ^ ^ ^ run summon minecraft:marker ^ ^ ^ {Tags:["djzc555.ray_marker","djzc555.ray_live"]}

#复制施法者视角方向到标记实体
data modify entity @e[tag=djzc555.ray_live,limit=1] Rotation set from entity @s Rotation

#复制参数到标记实体
scoreboard players operation @e[tag=djzc555.ray_live,limit=1] djzc555.ray_max = @s djzc555.ray_max
scoreboard players operation @e[tag=djzc555.ray_live,limit=1] djzc555.ray_type = @s djzc555.ray_type
scoreboard players operation @e[tag=djzc555.ray_live,limit=1] djzc555.ray_step = @s djzc555.ray_step
scoreboard players operation @e[tag=djzc555.ray_live,limit=1] djzc555.ray_particle = @s djzc555.ray_particle

#初始化步数计数器
scoreboard players set @e[tag=djzc555.ray_live,limit=1] djzc555.ray_dist 0

#启动第一步（传递storage用于宏步长替换）
execute as @e[tag=djzc555.ray_live,limit=1] at @s run function djzc555:raycast/internal/step with storage djzc555:raycast config

#清除临时标签
tag @e[tag=djzc555.ray_live] remove djzc555.ray_live
