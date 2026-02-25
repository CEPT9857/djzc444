scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.cover",fallback:"我来助你！"}]}
playsound entity.piglin.converted_to_zombified player @a[team=T] ~ ~ ~ 100