scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.attack_b",fallback:"进攻B点！"}]}
playsound item.goat_horn.sound.1 player @a[team=T] ~ ~ ~ 100