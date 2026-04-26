#空空导弹48层烟花，等效伤害84
#生成CT的空对空导弹
execute as @a[team=CT,scores={r_click1=1..}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["CT_AA","AA","missile"],FireworksItem:{id:"firework_rocket",components:{fireworks:{flight_duration:6,explosions:[{shape:"small_ball"}]}}},LifeTime:60}
#登记发射者
execute as @a[team=CT,scores={r_click1=1..}] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=CT_AA,nbt={LifeTime:60},limit=1] Owner set from entity @p[team=CT,scores={r_click1=1..}] UUID
#生成T的空对空导弹
execute as @a[team=T,scores={r_click1=1..}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["T_AA","AA","missile"],FireworksItem:{id:"firework_rocket",components:{fireworks:{flight_duration:6,explosions:[{shape:"small_ball"}]}}},LifeTime:60}
#登记发射者
execute as @a[team=T,scores={r_click1=1..}] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=T_AA,nbt={LifeTime:60},limit=1] Owner set from entity @p[team=T,scores={r_click1=1..}] UUID

execute as @a[scores={r_click1=1..}] run scoreboard players set @s r_click1 0
#将两队的计分板合并处理

kill @e[type=minecraft:snowball]
#清理雪球