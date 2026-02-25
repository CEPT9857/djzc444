scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.cover",fallback:"我来助你！"}]}
playsound entity.piglin.converted_to_zombified player @a[team=CT] ~ ~ ~ 100