#路径点设置
waypoint modify @s style set bowtie
waypoint modify @s[team=CT] color blue
waypoint modify @s[team=T] color red
attribute @s waypoint_transmit_range base set 50
attribute @s attack_damage base set 20
#设置 anger_end_time 为400刻（20秒）
execute as @s[type=minecraft:bee,nbt={PortalCooldown:400}] run data modify entity @s anger_end_time set value 400
#设置 angry_at 为目标玩家的 UUID
execute as @s[team=CT] unless entity @s[nbt={PortalCooldown:0}] run data modify entity @s angry_at set from entity @n[team=T] UUID
execute as @s[team=T] unless entity @s[nbt={PortalCooldown:0}] run data modify entity @s angry_at set from entity @n[team=CT] UUID
execute as @s[type=minecraft:bee,nbt={PortalCooldown:395}] run data modify entity @s Invulnerable set value false
#对于进行过攻击的蜜蜂，自动重新装填
execute as @s[type=minecraft:bee,nbt={HasStung:true}] run data merge entity @s {HasStung:false}