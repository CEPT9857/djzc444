#> 导弹近炸引信 (predicate版——基于is_on_ground/no_on_ground判定)
#> 与 lib_missile_fuze_tag 的区别：
#>   tag=AF（空中目标）→ predicate=djzc444:no_on_ground
#>   tag=GF（地面目标）→ predicate=djzc444:is_on_ground

#碰到地面的导弹会自爆
execute as @e[type=snowball,tag=missile] at @s unless block ~ ~ ~ #minecraft:replaceable run data modify entity @s PortalCooldown set value 0
#近炸引信（空对空导弹）
execute as @e[team=T,predicate=djzc444:no_on_ground] at @s run data modify entity @e[type=minecraft:snowball,tag=CT_AA,distance=..3,limit=1] PortalCooldown set value 0
execute as @e[team=CT,predicate=djzc444:no_on_ground] at @s run data modify entity @e[type=minecraft:snowball,tag=T_AA,distance=..3,limit=1] PortalCooldown set value 0
#近炸引信（空对地导弹）
execute as @e[team=CT,predicate=djzc444:is_on_ground] at @s run data modify entity @e[type=minecraft:snowball,tag=T_AG,distance=..3,limit=1] PortalCooldown set value 0
execute as @e[team=T,predicate=djzc444:is_on_ground] at @s run data modify entity @e[type=minecraft:snowball,tag=CT_AG,distance=..3,limit=1] PortalCooldown set value 0
#近炸引信（地对空导弹）
execute as @e[team=T,predicate=djzc444:no_on_ground] at @s run data modify entity @e[type=minecraft:snowball,tag=CT_GA,distance=..3,limit=1] PortalCooldown set value 0
execute as @e[team=CT,predicate=djzc444:no_on_ground] at @s run data modify entity @e[type=minecraft:snowball,tag=T_GA,distance=..3,limit=1] PortalCooldown set value 0
#PortalCooldown归零（超时/撞墙/近炸）时：
#提取雪球发射者信息,然后执行伤害函数，然后放烟花特效，然后删除雪球防止BUG
execute as @e[type=minecraft:snowball,tag=missile,nbt={PortalCooldown:0}] run function djzc666:game/lib_missile_damage with entity @s
execute as @e[type=minecraft:snowball,tag=missile,nbt={PortalCooldown:0}] at @s run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",components:{fireworks:{flight_duration:6,explosions:[{shape:"small_ball"}]}}},LifeTime:0}
execute as @e[type=minecraft:snowball,tag=missile,nbt={PortalCooldown:0}] run kill @s