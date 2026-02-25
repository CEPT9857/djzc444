scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.rush",fallback:"和我一起冲上去！"}]}
playsound entity.piglin.ambient player @a[team=T] ~ ~ ~ 100