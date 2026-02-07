execute as @a[team=CT,scores={r_click2=1..}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["CT_AG","AG","missile"],FireworksItem:{id:"firework_rocket",components:{fireworks:{flight_duration:6,explosions:[{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"}]}}},LifeTime:40}
#CT的空对地导弹
execute as @a[team=T,scores={r_click2=1..}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {Tags:["T_AG","AG","missile"],FireworksItem:{id:"firework_rocket",components:{fireworks:{flight_duration:6,explosions:[{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"}]}}},LifeTime:40}
#T的空对地导弹
#33层烟花
execute as @a[scores={r_click2=1..}] run scoreboard players set @s r_click2 0
#将两队的计分板合并处理
execute as @e[type=minecraft:firework_rocket,tag=CT_AG] run playsound minecraft:block.anvil.land player @p[team=T,tag=GF] -386.00 70.39 -755.52 1000
execute as @e[type=minecraft:firework_rocket,tag=CT_AG] run title @p[tag=AF,team=T] actionbar [{"text":"敌导弹","color":"red"}]
#敌导弹！
execute as @e[type=minecraft:firework_rocket,tag=T_AG] run playsound minecraft:block.anvil.land player @p[team=CT,tag=GF] -386.00 70.39 -755.52 1000
execute as @e[type=minecraft:firework_rocket,tag=T_AG] run title @p[tag=AF,team=CT] actionbar [{"text":"敌导弹","color":"red"}]
#敌导弹！
kill @e[type=minecraft:egg]
#清理鸡蛋