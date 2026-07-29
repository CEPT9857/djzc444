#> 向量法导弹制导计算（本逻辑由Deepseek生成）
#> @s = 导弹实体
#> 执行位置 = 导弹所在处，旋转角度 = 朝向目标敌人
#>
#> 原理：
#> 1. 在导弹位置召唤临时标记实体（继承朝向目标的旋转）
#> 2. 将标记沿朝向方向移动speed格（即方向向量×速度）
#> 3. 计算(标记位置 - 导弹位置)得到差值向量
#> 4. 将差值向量写入雪球Motion，使其通过物理运动接近敌人

# 确保Motion标签存在（避免列表索引异常）
data modify entity @s Motion set value [0.0d,0.0d,0.0d]

# 召唤临时标记实体（位于导弹位置，继承执行上下文中"facing entity"的朝向）
summon minecraft:marker ~ ~ ~ {Tags:["djzc666_dir"]}

# 标记沿当前朝向移动（移动距离即导弹每tick速度，当前1.65格/tick）
tp @e[tag=djzc666_dir,sort=nearest,limit=1] ^ ^ ^1.65

# 获取标记位置（世界坐标，缩放×1000存入计分板）
execute store result score #djzc_tx djzc666.track run data get entity @e[tag=djzc666_dir,sort=nearest,limit=1] Pos[0] 1000
execute store result score #djzc_ty djzc666.track run data get entity @e[tag=djzc666_dir,sort=nearest,limit=1] Pos[1] 1000
execute store result score #djzc_tz djzc666.track run data get entity @e[tag=djzc666_dir,sort=nearest,limit=1] Pos[2] 1000

# 获取导弹当前位置（世界坐标，缩放×1000存入计分板）
execute store result score #djzc_mx djzc666.track run data get entity @s Pos[0] 1000
execute store result score #djzc_my djzc666.track run data get entity @s Pos[1] 1000
execute store result score #djzc_mz djzc666.track run data get entity @s Pos[2] 1000

# 计算差值向量 = 标记位置 - 导弹位置
# 结果即朝向目标的速度向量（已缩放到speed格/tick × 1000）
scoreboard players operation #djzc_tx djzc666.track -= #djzc_mx djzc666.track
scoreboard players operation #djzc_ty djzc666.track -= #djzc_my djzc666.track
scoreboard players operation #djzc_tz djzc666.track -= #djzc_mz djzc666.track

# 将差值向量写入雪球Motion（scale 0.001恢复原始缩放，得到实际运动速度）
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #djzc_tx djzc666.track
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #djzc_ty djzc666.track
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #djzc_tz djzc666.track

# 清理临时标记
kill @e[tag=djzc666_dir,sort=nearest,limit=1]
