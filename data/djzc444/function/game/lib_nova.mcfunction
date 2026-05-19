execute as @e[type=#minecraft:arrows,nbt={PierceLevel:7b}] run data merge entity @s {damage:20d,PierceLevel:1b,Tags:[shot],PortalCooldown:2}
#检测穿透7级的箭，修改伤害
execute at @e[tag=shot,nbt={PortalCooldown:0}] run particle minecraft:cloud
#特效
kill @e[tag=shot,type=#minecraft:arrows,nbt={PortalCooldown:0}]
#超过范围自动消失