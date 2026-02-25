scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.defend_a",fallback:"防守A点！"}]}
playsound item.goat_horn.sound.4 player @a[team=CT] ~ ~ ~ 100