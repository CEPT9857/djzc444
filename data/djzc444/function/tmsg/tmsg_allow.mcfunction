scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.allow",fallback:"赞成！"}]}
playsound entity.piglin.jealous player @a[team=T] ~ ~ ~ 100