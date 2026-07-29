#在射线检测结果位置生成轰炸标记
#宏函数：从 storage djzc555:raycast result 读取坐标并生成 mark3 实体
#用法：function djzc555:raycast/spawn_at_result with storage djzc555:raycast result
#与原 lib_boom_marker 的 mark2→mark3 过渡行为一致

#在命中/终点位置生成轰炸标记实体（mark3 = 已标记，1秒后爆炸）
$summon minecraft:marker $(x) $(y) $(z) {Tags:["mark3"]}

#在命中/终点位置播放引爆音效（与原 mark2 触地音效一致）
$playsound entity.creeper.primed ambient @a $(x) $(y) $(z) 1.0 1.0

#设置爆炸倒计时200tick=10秒（与战雷的火炮支援时间大致相当）
scoreboard players set @e[tag=mark3,limit=1,sort=nearest] djzc.time2 200

#清除射线检测结果存储
data modify storage djzc555:raycast result set value {}
