scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.retreat",fallback:"撤退！"}]}
playsound entity.piglin.admiring_item player @a[team=T] ~ ~ ~ 100