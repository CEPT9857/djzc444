#> 导弹制导模式分发器
#> 根据 missile_mode djzc.option 分值选择制导方式：
#>   0（默认）= TP瞬移制导（原始行为）
#>   1         = 向量法Motion制导（新机制）
#>
#> @s = 导弹实体
#> 执行上下文已通过 facing entity 朝向目标

# 模式1：向量法制导
execute if score missile_mode djzc.option matches 1 run function djzc666:game/lib_missile_track_calc

# 模式0（默认）：TP瞬移制导
# 空对地导弹——保留下滑分量 ^ ^-0.1 ^1.5
execute unless score missile_mode djzc.option matches 1 if entity @s[tag=AG] run tp @s ^ ^-0.1 ^1.5
# 其他导弹（空对空AA、地对空GA）——直飞 ^ ^ ^1.65
execute unless score missile_mode djzc.option matches 1 unless entity @s[tag=AG] run tp @s ^ ^ ^1.65
