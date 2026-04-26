#特效
execute at @s run particle campfire_cosy_smoke ~ ~ ~ 0.2 0.1 0.2 0.9 500
#爆炸伤害梯度
execute at @s as @a[distance=..0.5] run damage @s 144 minecraft:explosion
execute at @s as @a[distance=0.5..1.5] run damage @s 134 minecraft:explosion
execute at @s as @a[distance=1.5..2.5] run damage @s 125 minecraft:explosion
execute at @s as @a[distance=2.5..3.5] run damage @s 115 minecraft:explosion
execute at @s as @a[distance=3.5..4.5] run damage @s 106 minecraft:explosion
execute at @s as @a[distance=4.5..5.5] run damage @s 96 minecraft:explosion
execute at @s as @a[distance=5.5..6.5] run damage @s 86 minecraft:explosion
execute at @s as @a[distance=6.5..7.5] run damage @s 77 minecraft:explosion
execute at @s as @a[distance=7.5..8.5] run damage @s 67 minecraft:explosion
execute at @s as @a[distance=8.5..9.5] run damage @s 58 minecraft:explosion
execute at @s as @a[distance=9.5..10.5] run damage @s 48 minecraft:explosion
execute at @s as @a[distance=10.5..11.5] run damage @s 38 minecraft:explosion
execute at @s as @a[distance=11.5..12.5] run damage @s 29 minecraft:explosion
execute at @s as @a[distance=12.5..13.5] run damage @s 19 minecraft:explosion
execute at @s as @a[distance=13.5..14.5] run damage @s 10 minecraft:explosion
#音效
execute at @s run playsound entity.generic.explode ambient @a ~ ~ ~ 1.0 1.0 0.1
execute at @s run playsound minecraft:entity.player.attack.crit ambient @s ~ ~ ~ 1 0.5
execute at @s run playsound minecraft:block.gravel.break ambient @a
#清理标记
scoreboard players reset @s
kill @s