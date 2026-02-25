scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.sos",fallback:"请求支援！"}]}
playsound entity.piglin.retreat player @a[team=T] ~ ~ ~ 100