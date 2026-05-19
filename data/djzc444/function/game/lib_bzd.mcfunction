#碰到地面就变标签
execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~1 ~ ~ #replaceable run data merge entity @s {Tags:["mark3"]}
execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~-1 ~ ~ #replaceable run data merge entity @s {Tags:["mark3"]}
execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~ ~-1 ~ #replaceable run data merge entity @s {Tags:["mark3"]}
execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~ ~1 ~ #replaceable run data merge entity @s {Tags:["mark3"]}
execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~ ~ ~1 #replaceable run data merge entity @s {Tags:["mark3"]}
execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~ ~ ~-1 #replaceable run data merge entity @s {Tags:["mark3"]}

#execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~1 ~ ~1 #replaceable run data merge entity @s {Tags:["mark3"]}
#execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~1 ~ ~-1 #replaceable run data merge entity @s {Tags:["mark3"]}
#execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~-1 ~ ~1 #replaceable run data merge entity @s {Tags:["mark3"]}
#execute as @e[type=egg,nbt={Item:{id:"minecraft:brown_egg"}}] at @s unless block ~-1 ~ ~-1 #replaceable run data merge entity @s {Tags:["mark3"]}
#碰到地面就放音效
execute as @e[tag=mark3,type=egg] at @s run playsound entity.creeper.primed ambient @a ~ ~ ~
#碰到地面就爆炸
execute as @e[tag=mark3,type=egg] at @s run function djzc444:game/lib_boom_marker_damage