#单次轰炸操作（由 lib_boom_marker 调用）
#@s = 执行点击的玩家
#处理：射线检测 → 物品耐久 → 分数重置 → 生成轰炸标记

#执行基于djzc555的即时射线检测（替代原 mark1→mark2 逐tick飞行）
function djzc555:raycast/ground

#扣掉轰炸指示器的耐久（debug模式不扣）
execute unless score debug djzc.option matches 1 run item modify entity @s weapon djzc444:damage_half

#重置右键分数
scoreboard players set @s djzc.r_click5 0

#在射线检测命中/终点位置生成轰炸标记实体（mark3 = 1秒后爆炸）
execute if data storage djzc555:raycast result.x run function djzc555:raycast/spawn_at_result with storage djzc555:raycast result
