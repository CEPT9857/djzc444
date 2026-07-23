scoreboard players reset @s djzc.ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.allow",fallback:"赞成！"}]}
playsound entity.piglin.jealous player @a[team=CT] ~ ~ ~ 100