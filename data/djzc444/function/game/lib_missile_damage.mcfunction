#执行伤害函数（空对空导弹/地对空导弹）
$execute at @s[tag=AA] as @e[distance=..5] run damage @s 84 djzc444:missile by @p[nbt={UUID:$(Owner)}]
#执行伤害函数（空对地导弹）
$execute at @s[tag=AG] as @e[distance=..5] run damage @s 46 djzc444:missile by @p[nbt={UUID:$(Owner)}]