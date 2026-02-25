scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.sos",fallback:"请求支援！"}]}
playsound entity.piglin.retreat player @a[team=CT] ~ ~ ~ 100