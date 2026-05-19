#特效和音效
execute at @s run particle firework ~ ~ ~
execute at @s run playsound entity.creeper.primed
#一键三连航空版 垂直机动效果
execute as @s run advancement grant @s only djzc444:fight/wea_fly
execute as @s run effect give @s minecraft:levitation 1 2 true
execute as @s run effect give @s minecraft:slow_falling 1 1 true