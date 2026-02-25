scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.enemy",fallback:"发现敌人！"}]}
playsound entity.piglin.celebrate player @a[team=T] ~ ~ ~ 100