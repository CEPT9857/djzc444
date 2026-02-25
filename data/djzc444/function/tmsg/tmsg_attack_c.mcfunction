scoreboard players reset @s tmsg
execute as @s run tellraw @a[team=T] {"selector":"@s","extra":[{"text":":"},{"translate":"djzc.msg.attack_c",fallback:"进攻C点！"}]}
playsound item.goat_horn.sound.2 player @a[team=T] ~ ~ ~ 100