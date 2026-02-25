scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.rush",fallback:"和我一起冲上去！"}]}
playsound entity.piglin.ambient player @a[team=CT] ~ ~ ~ 100