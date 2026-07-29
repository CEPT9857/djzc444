#为扫描者添加标签
tag @s add djzc666.missile_scan

#圆锥检测128格内的玩家，因为雷达会平等的照到敌我双方，所以不区分队伍
execute as @s anchored eyes positioned ^ ^ ^ as @a[distance=..128] facing entity @s feet positioned as @s positioned ^ ^ ^-2 rotated as @p[tag=djzc666.missile_scan] positioned ^ ^ ^1.732 if entity @s[distance=..1] run effect give @s glowing 1 5 true

#播放音效
execute if score 刻 djzc.time2 matches 20 as @s at @s run playsound minecraft:block.anvil.land
execute if score 刻 djzc.time2 matches 10 as @s at @s run playsound minecraft:block.anvil.land

#移除标签和成就，防止BUG
advancement revoke @s only djzc666:tool/missile_ag_scan
tag @s remove djzc666.missile_scan
