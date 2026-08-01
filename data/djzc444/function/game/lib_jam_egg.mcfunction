#CT队使用干扰弹
execute as @a[team=CT,scores={djzc.r_click2=1..}] at @s run function djzc444:game/lib_jam_egg_spawn
execute as @a[team=CT,scores={djzc.r_click2=1..}] at @s run team join CT @e[tag=jam_decoy,type=chicken,distance=..2]

#T队使用干扰弹
execute as @a[team=T,scores={djzc.r_click2=1..}] at @s run function djzc444:game/lib_jam_egg_spawn
execute as @a[team=T,scores={djzc.r_click2=1..}] at @s run team join T @e[tag=jam_decoy,type=chicken,distance=..2]

#清理投掷出的鸡蛋
execute as @a[scores={djzc.r_click2=1..}] run kill @e[type=egg,nbt={Item:{id:"minecraft:egg"}}]

#重置计分板
execute as @a[scores={djzc.r_click2=1..}] run scoreboard players set @s djzc.r_click2 0

#超时清除干扰鸡（PortalCooldown归零=5秒到期）
kill @e[tag=jam_decoy,type=chicken,nbt={PortalCooldown:0}]
