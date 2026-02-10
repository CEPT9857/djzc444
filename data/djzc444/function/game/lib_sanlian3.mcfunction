execute as @e[type=#minecraft:arrows,nbt={PierceLevel:5b}] run data merge entity @s {damage:8d,PierceLevel:1b}
#检测穿透5级的箭，修改伤害