scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.defend_c",fallback:"防守C点！"}]}
playsound item.goat_horn.sound.6 player @a[team=T] ~ ~ ~ 100