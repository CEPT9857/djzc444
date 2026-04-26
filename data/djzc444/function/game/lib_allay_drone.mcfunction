#CT的无人机
execute as @a[team=CT,scores={r_click3=1..}] at @s run summon allay ~ ~1 ~ {Tags:["drone","AF"],PortalCooldown:200,Team:CT}
#T的无人机
execute as @a[team=T,scores={r_click3=1..}] at @s run summon allay ~ ~1 ~ {Tags:["drone","AF"],PortalCooldown:200,Team:T}

#清理鸡蛋
execute as @a[scores={r_click3=1..}] run kill @e[type=egg,nbt={Item:{id:"minecraft:blue_egg"}}]
#将两队的计分板合并处理
execute as @a[scores={r_click3=1..}] run scoreboard players set @s r_click3 0

#对仍然存活的无人机，执行侦察：标记周围 32 格内的敌方玩家
execute as @e[type=allay,tag=drone,team=CT] at @s run effect give @e[team=T, distance=..32] minecraft:glowing 3 0 true
execute as @e[type=allay,tag=drone,team=T] at @s run effect give @e[team=CT, distance=..32] minecraft:glowing 3 0 true

#修改悦灵的“跟随目标”，把它指向敌人
execute as @e[type=allay,tag=drone,team=CT] at @s run data modify entity @s Brain.memories."minecraft:liked_player".value set from entity @a[team=T,limit=1,sort=furthest] UUID
execute as @e[type=allay,tag=drone,team=T] at @s run data modify entity @s Brain.memories."minecraft:liked_player".value set from entity @a[team=CT,limit=1,sort=furthest] UUID

#特效
#execute at @e[tag=drone,type=allay,nbt={PortalCooldown:4}] run particle explosion ~ ~ ~ 0.5 0.5 0.5 1 5

#超时自动爆炸
execute at @e[tag=drone,type=allay,nbt={PortalCooldown:4}] run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",components:{fireworks:{explosions:[{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"}]}}},LifeTime:0}

#超时自动消失,防止BUG
kill @e[tag=drone,type=allay,nbt={PortalCooldown:0}]