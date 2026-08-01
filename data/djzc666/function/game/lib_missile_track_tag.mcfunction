#> 导弹制导系统
#> 通过 lib_missile_track_do 分发器选择制导模式：
#>   missile_mode djzc.option = 0（默认）→ TP瞬移制导
#>   missile_mode djzc.option = 1          → 向量法Motion制导
#> 切换命令：/scoreboard players set missile_mode djzc.option <0|1>
# 其实用冬战管理用书也可以的

# 追踪敌人（空对空导弹）
execute as @e[type=minecraft:snowball,tag=CT_AA] at @s facing entity @e[team=T,tag=AF,sort=nearest] feet run function djzc666:game/lib_missile_track_do
execute as @e[type=minecraft:snowball,tag=T_AA] at @s facing entity @e[team=CT,tag=AF,sort=nearest] feet run function djzc666:game/lib_missile_track_do

# 追踪敌人（空对地导弹）
execute as @e[type=minecraft:snowball,tag=CT_AG] at @s facing entity @e[team=T,tag=GF,sort=nearest] feet run function djzc666:game/lib_missile_track_do
execute as @e[type=minecraft:snowball,tag=T_AG] at @s facing entity @e[team=CT,tag=GF,sort=nearest] feet run function djzc666:game/lib_missile_track_do

# 追踪敌人（地对空导弹）
execute as @e[type=minecraft:snowball,tag=CT_GA] at @s facing entity @e[team=T,tag=AF,sort=nearest] feet run function djzc666:game/lib_missile_track_do
execute as @e[type=minecraft:snowball,tag=T_GA] at @s facing entity @e[team=CT,tag=AF,sort=nearest] feet run function djzc666:game/lib_missile_track_do

# 干扰诱饵（优先级最高——写在最后覆盖正常制导，命中抛出的物品）
# 旧版代码，正在考虑弃用
#execute as @e[type=minecraft:snowball,tag=missile] at @s facing entity @e[type=minecraft:item,sort=nearest] feet run function djzc666:game/lib_missile_track_do

# 特效（空对空导弹/AA）
execute at @e[tag=AA] run particle minecraft:glow_squid_ink ^ ^ ^
execute at @e[tag=AA] run particle minecraft:large_smoke ^ ^ ^
# 特效（空对地导弹/AG）
execute at @e[tag=AG] run particle minecraft:explosion
execute at @e[tag=AG] run particle minecraft:large_smoke
# 特效（地对空导弹/GF_AA）
execute at @e[tag=GF_AA] run particle minecraft:explosion
