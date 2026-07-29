# 实现《MCBBS》帖子的圆锥检测方法：根据已知实体的朝向和目标实体的相对方向
# https://mcbbs.10961096.xyz/post/1361817，最后由2022-7-14 10:44编辑，20260728引用

# 构造三角形，通过检测第三条边的距离判断目标是否在圆锥范围内。
# 此处的1.732是tan(30°)的近似值，用于计算圆锥的边界。

# 示例：检测最近玩家前方 32 格、60° 扇形范围内的非玩家实体，并为命中的实体添加 tag cone_target。
# 这个函数可作为锥形检测工具供其它函数调用。

# 清除上一次检测结果
tag @e[tag=cone_target] remove cone_target

# 根据玩家朝向检测圆锥范围
# 1. 从玩家视线开始执行，保存当前执行位置与朝向
# 2. 以每个目标实体执行，使目标实体成为候选实体，并使用当前执行位置和朝向构造三角形
# 3. 若目标实体位于玩家前方 60° 扇形范围内，则为该实体添加 cone_target 标签
execute as @p anchored eyes positioned ^ ^ ^ as @e[type=!player,distance=..32] facing entity @s feet positioned as @s positioned ^ ^ ^-2 rotated as @p positioned ^ ^ ^1.732 if entity @s[distance=..1] run tag @s add cone_target