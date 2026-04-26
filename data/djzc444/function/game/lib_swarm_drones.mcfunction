#检测穿透8级的箭，填入数据
execute as @e[type=#minecraft:arrows,nbt={PierceLevel:8b}] on origin run execute as @s[team=CT] run team join CT @e[type=#minecraft:arrows,nbt={PierceLevel:8b}]
execute as @e[type=#minecraft:arrows,nbt={PierceLevel:8b}] on origin run execute as @s[team=T] run team join T @e[type=#minecraft:arrows,nbt={PierceLevel:8b}]
execute as @e[type=#minecraft:arrows,nbt={PierceLevel:8b}] run data merge entity @s {PierceLevel:1b,Tags:[swarm],PortalCooldown:20}
#如果落地，或者飞行超过1秒，召唤蜜蜂
execute at @e[tag=swarm,type=#minecraft:arrows,nbt={PortalCooldown:0}] run function djzc444:game/lib_swarm_drones_summon
execute at @e[tag=swarm,type=#minecraft:arrows,nbt={inGround:true}] run function djzc444:game/lib_swarm_drones_summon
#为蜜蜂分配队伍
execute as @e[type=arrow,team=CT] at @s run team join CT @e[type=minecraft:bee,distance=..1]
execute as @e[type=arrow,team=T] at @s run team join T @e[type=minecraft:bee,distance=..1]
#执行攻击指令
execute as @e[type=minecraft:bee] run function djzc444:game/lib_swarm_drones_attack
#召唤蜜蜂以后，自动删除箭
kill @e[tag=swarm,type=#minecraft:arrows,nbt={PortalCooldown:0}]
kill @e[tag=swarm,type=#minecraft:arrows,nbt={inGround:true}]
#清除超时的蜜蜂
kill @e[type=minecraft:bee,nbt={PortalCooldown:0}]