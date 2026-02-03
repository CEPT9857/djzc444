execute as @a[scores={r_click6=1..}] at @s run function djzc444:raycast/armor_stand
execute as @a[scores={jump=1..}] run scoreboard players set @s r_click6 0
execute as @a[scores={jump=1..}] run scoreboard players set @s jump 0

execute as @a[scores={r_click8=1..}] at @s run function djzc444:raycast/misslie
execute as @a[scores={r_click8=1..}] run scoreboard players set @s r_click8 0

#execute as @e[tag=mark12,nbt={PortalCooldown:5}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0.1 0 1 0 force
execute as @e[tag=mark13] at @s run particle minecraft:glow_squid_ink ~ ~ ~ 0 0.1 0 1 0 force
execute as @e[tag=mark11] at @s run tp @p

execute as @e[tag=mark13] at @s facing entity @e[tag=mark12,nbt={PortalCooldown:5}] feet run tp ^ ^ ^1.5
execute as @e[tag=mark13] at @s facing entity @e[tag=mark14] eyes run tp ^ ^ ^1.5
execute as @e[tag=mark13,nbt={PortalCooldown:0}] at @s facing entity @e eyes run tp ^ ^ ^1.5

execute as @e[tag=mark11] at @s run tp ~ ~1.5 ~
execute as @e[tag=mark11] at @s run tag @s remove mark11
execute as @e[tag=mark12] at @s run tp ^ ^ ^5

#execute as @e[tag=mark12] at @s unless block ~ ~ ~ #minecraft:replaceable run execute at @s run particle minecraft:end_rod ~ ~ ~ 0 0.1 0 1 0 force

#激光制导（可选）
execute as @e[tag=mark12] at @s unless block ~ ~-1 ~ #minecraft:replaceable run tag @s add mark14
execute as @e[tag=mark12] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s


kill @e[tag=shot,type=armor_stand,nbt={PortalCooldown:0}]