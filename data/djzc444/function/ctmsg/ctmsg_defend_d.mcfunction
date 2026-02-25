scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.defend_d",fallback:"防守D点！"}]}
playsound item.goat_horn.sound.7 player @a[team=CT] ~ ~ ~ 100