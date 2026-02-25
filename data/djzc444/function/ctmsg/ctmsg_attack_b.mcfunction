scoreboard players reset @s ctmsg
execute as @s run tellraw @a[team=CT] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.attack_b",fallback:"进攻B点！"}]}
playsound item.goat_horn.sound.1 player @a[team=CT] ~ ~ ~ 100