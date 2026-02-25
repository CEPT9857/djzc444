scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.defend_b",fallback:"防守B点！"}]}
playsound item.goat_horn.sound.5 player @a[team=T] ~ ~ ~ 100