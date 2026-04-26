#检测穿透9级的箭，填入数据
#超时(30秒)后，游戏系统自动删除箭
execute as @e[type=#minecraft:arrows,nbt={PierceLevel:9b}] run data merge entity @s {PierceLevel:1b,Tags:[smoke],life:600,pickup:2}
#如果落地，开始喷烟
execute at @e[tag=smoke,type=#minecraft:arrows,nbt={inGround:true}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.5 2.5 1.5 0.05 15