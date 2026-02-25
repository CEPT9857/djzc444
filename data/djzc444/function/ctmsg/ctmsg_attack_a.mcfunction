scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.attack_a",fallback:"进攻A点！"}]}
playsound item.goat_horn.sound.0 player @a[team=CT] ~ ~ ~ 100