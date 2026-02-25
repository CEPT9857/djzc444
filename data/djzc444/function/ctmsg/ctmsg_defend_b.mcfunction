scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.defend_b",fallback:"防守B点！"}]}
playsound item.goat_horn.sound.5 player @a[team=CT] ~ ~ ~ 100