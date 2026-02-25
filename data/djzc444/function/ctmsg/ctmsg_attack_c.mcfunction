scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.attack_c",fallback:"进攻C点！"}]}
playsound item.goat_horn.sound.2 player @a[team=CT] ~ ~ ~ 100