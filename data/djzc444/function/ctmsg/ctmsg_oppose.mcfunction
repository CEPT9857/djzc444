scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.oppose",fallback:"反对！"}]}
playsound entity.piglin.angry player @a[team=CT] ~ ~ ~ 100