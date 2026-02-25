scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.attack_d",fallback:"进攻D点！"}]}
playsound item.goat_horn.sound.3 player @a[team=CT] ~ ~ ~ 100