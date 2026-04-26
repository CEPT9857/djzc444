#空地导弹33层烟花，等效伤害46
#生成CT的空对地导弹
execute as @a[team=CT,scores={r_click2=1..}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["CT_AG","AG","missile"],FireworksItem:{id:"firework_rocket",components:{fireworks:{flight_duration:6,explosions:[{shape:"small_ball"}]}}},LifeTime:40}
#登记发射者
execute as @a[team=CT,scores={r_click2=1..}] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=CT_AG,nbt={LifeTime:40},limit=1] Owner set from entity @p[team=CT,scores={r_click2=1..}] UUID
#生成T的空对地导弹
execute as @a[team=T,scores={r_click2=1..}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["T_AG","AG","missile"],FireworksItem:{id:"firework_rocket",components:{fireworks:{flight_duration:6,explosions:[{shape:"small_ball"}]}}},LifeTime:40}
#登记发射者
execute as @a[team=T,scores={r_click2=1..}] at @s run data modify entity @e[type=minecraft:firework_rocket,tag=T_AG,nbt={LifeTime:40},limit=1] Owner set from entity @p[team=T,scores={r_click2=1..}] UUID
#清理鸡蛋
execute as @a[scores={r_click2=1..}] run kill @e[type=egg,nbt={Item:{id:"minecraft:egg"}}]
#将两队的计分板合并处理
execute as @a[scores={r_click2=1..}] run scoreboard players set @s r_click2 0