scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.oppose",fallback:"反对！"}]}
playsound entity.piglin.angry player @a[team=T] ~ ~ ~ 100