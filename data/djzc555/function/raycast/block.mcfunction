#射线检测 - 方块模式
#检测玩家视线方向上的方块碰撞（精准模式，0.1格步长）
#用法：execute as <caster> at @s run function djzc555:raycast/block
#调用前可通过计分板设置参数：
#  scoreboard players set @s djzc555.ray_max <最大步数>（默认500=50格）
#  scoreboard players set @s djzc555.ray_step <步长值>（默认1=0.1格，设10=1格）
#  scoreboard players set @s djzc555.ray_particle <0|1>（默认0=关闭粒子轨迹）
#结果写入 storage djzc555:raycast result

#设置射线类型为方块检测
scoreboard players set @s djzc555.ray_type 0

#如果未设置最大距离，使用默认值500（=50格，步长0.1）
execute unless score @s djzc555.ray_max matches 1.. run scoreboard players set @s djzc555.ray_max 500

#如果未设置步长，使用默认值1（0.1格精度）
execute unless score @s djzc555.ray_step matches 1.. run scoreboard players set @s djzc555.ray_step 1

#如果未设置粒子模式，使用默认值0（关闭，纯工具模式）
execute unless score @s djzc555.ray_particle matches 0.. run scoreboard players set @s djzc555.ray_particle 0

#启动射线检测
function djzc555:raycast/internal/start
