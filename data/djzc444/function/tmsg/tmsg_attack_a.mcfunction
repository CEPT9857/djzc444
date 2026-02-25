scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.attack_a",fallback:"进攻A点！"}]}
playsound item.goat_horn.sound.0 player @a[team=T] ~ ~ ~ 100