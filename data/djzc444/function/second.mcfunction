#每秒执行一次的命令
#自动修理展示框
execute positioned -385.5 63.50 -689.50 unless entity @e[x=-385,y=63,z=-690,limit=1,type=minecraft:glow_item_frame,distance=..1] run summon minecraft:glow_item_frame -385.5 63.50 -689.50 {Facing:3b,Item:{id:"minecraft:glow_item_frame"},Invulnerable:1b}
execute positioned -350.5 58.5 -767.50 unless entity @e[x=-350,y=58,z=-767,limit=1,type=minecraft:glow_item_frame,distance=..1] run summon minecraft:glow_item_frame -350.5 58.5 -767.50 {Facing:2b,Item:{id:"minecraft:glow_item_frame"},Invulnerable:1b}
execute positioned -377.50 81.5 -872.5 unless entity @e[x=-378,y=81,z=-873,limit=1,type=minecraft:glow_item_frame,distance=..1] run summon minecraft:glow_item_frame -377.50 81.5 -872.5 {Facing:3b,Item:{id:"minecraft:glow_item_frame"},Invulnerable:1b}

execute positioned -447.00 73 -728.5 unless entity @e[x=-447,y=73,z=-728,limit=1,type=minecraft:glow_item_frame,distance=..1] run summon minecraft:glow_item_frame -447.00 73 -728.5 {Facing:2b,Item:{id:"minecraft:glow_item_frame"},Invulnerable:1b}
execute positioned -433.00 66.5 -760.5 unless entity @e[x=-433,y=66,z=-760,limit=1,type=minecraft:glow_item_frame,distance=..1] run summon minecraft:glow_item_frame -433.00 66.5 -760.5 {Facing:5b,Item:{id:"minecraft:glow_item_frame"},Invulnerable:1b}
execute positioned -461.50 63.5 -812.5 unless entity @e[x=-461,y=63,z=-813,limit=1,type=minecraft:glow_item_frame,distance=..1] run summon minecraft:glow_item_frame -461.50 63.5 -812.5 {Facing:4b,Item:{id:"minecraft:glow_item_frame"},Invulnerable:1b}

kill @e[type=minecraft:item]
#清理掉落物

#把时间塞进命令存储，在对话框里可以调用
execute store result storage time minute int 1 run scoreboard players get 分 time
execute store result storage time second int 1 run scoreboard players get 秒 time
#时间的存储
execute store result storage type_manage minute int 1 run scoreboard players get 分 time
execute store result storage type_manage second int 1 run scoreboard players get 秒 time
#兵种管理系统的存储

#机场补给系统
execute as @a run function djzc444:points/airport_ct
execute as @a run function djzc444:points/airport_t

#敌导弹告警
function djzc444:game/lib_missile_from_enemy