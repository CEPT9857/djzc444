#轰炸指示器系统（基于djzc555即时射线检测）
#原 mark1→mark2 逐tick飞行已替换为 djzc555 射线检测
#当玩家在指定区域内使用萝卜钓竿右键时：
#  1. 执行即时射线检测（步长1格，最大400格，#minecraft:replaceable方块过滤）
#  2. 在命中点/终点直接生成 mark3 实体
#  3. mark3 倒计时20tick（1秒）后引爆
#mark3的倒计时和粒子特效由本函数后续部分处理

#没收没有耐久的轰炸指示器
execute as @a if items entity @s weapon minecraft:carrot_on_a_stick[minecraft:damage~{damage:25}] run item replace entity @s weapon with air

#在可召唤轰炸的区域内，执行射线检测并生成轰炸标记
#区域A和B（非debug模式限制）
execute unless score debug djzc.option matches 1 as @a[predicate=djzc444:boom_area,scores={djzc.r_click5=1..}] at @s run function djzc444:game/lib_boom_single
#debug模式：任意区域可召唤
execute if score debug djzc.option matches 1 as @a[scores={djzc.r_click5=1..}] at @s run function djzc444:game/lib_boom_single

#mark3倒计时归零时引爆（倒计时由 time_custom 常驻时钟控制）
execute as @e[tag=mark3,scores={djzc.time2=..0}] at @s run function djzc444:game/lib_boom_marker_damage

#mark3粒子特效（glow_squid_ink = 烟雾警告）
execute as @e[tag=mark3] at @s run particle minecraft:glow_squid_ink ~ ~ ~ 0 0.01 0 100 0 force