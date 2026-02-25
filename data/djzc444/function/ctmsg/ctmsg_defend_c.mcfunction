scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.defend_c",fallback:"防守C点！"}]}
playsound item.goat_horn.sound.6 player @a[team=CT] ~ ~ ~ 100