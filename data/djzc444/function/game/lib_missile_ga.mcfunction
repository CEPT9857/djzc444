#生成CT的地对空导弹
execute as @a[team=CT,scores={r_click=1..}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["CT_GA","GF_AA","AA","missile"],FireworksItem:{id:"firework_rocket",components:{fireworks:{flight_duration:10,explosions:[{shape:"small_ball"}]}}},LifeTime:120}
#登记发射者
execute as @a[team=CT,scores={r_click=1..}] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=CT_GA,nbt={LifeTime:120},limit=1] Owner set from entity @p[team=CT,scores={r_click=1..}] UUID
#生成T的地对空导弹
execute as @a[team=T,scores={r_click=1..}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["T_GA","GF_AA","AA","missile"],FireworksItem:{id:"firework_rocket",components:{fireworks:{flight_duration:10,explosions:[{shape:"small_ball"}]}}},LifeTime:120}
#登记发射者
execute as @a[team=T,scores={r_click=1..}] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=T_GA,nbt={LifeTime:120},limit=1] Owner set from entity @p[team=T,scores={r_click=1..}] UUID
#将两队的计分板合并处理
execute as @a[scores={r_click=1..}] run scoreboard players set @s r_click 0
#清理浮漂
kill @e[type=minecraft:fishing_bobber]