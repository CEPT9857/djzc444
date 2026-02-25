scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.enemy",fallback:"发现敌人！"}]}
playsound entity.piglin.celebrate player @a[team=CT] ~ ~ ~ 100