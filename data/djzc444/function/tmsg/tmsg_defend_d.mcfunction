scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.defend_d",fallback:"防守D点！"}]}
playsound item.goat_horn.sound.7 player @a[team=T] ~ ~ ~ 100