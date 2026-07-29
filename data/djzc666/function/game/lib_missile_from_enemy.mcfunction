#空对空导弹
execute at @a[team=T,tag=AF] as @e[type=minecraft:snowball,tag=CT_AA,distance=..100] if entity @s at @s run playsound minecraft:block.anvil.land player @a[team=T,tag=AF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:snowball,tag=CT_AA] at @s run title @a[team=T,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！
execute at @a[team=CT,tag=AF] as @e[type=minecraft:snowball,tag=T_AA,distance=..100] if entity @s at @s run playsound minecraft:block.anvil.land player @a[team=CT,tag=AF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:snowball,tag=T_AA] at @s run title @a[team=CT,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！

#地对空导弹
execute at @a[team=T,tag=AF] as @e[type=minecraft:snowball,tag=CT_GA,distance=..100] if entity @s at @s run playsound minecraft:block.anvil.land player @a[team=T,tag=AF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:snowball,tag=CT_GA] at @s run title @a[team=T,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！
execute at @a[team=CT,tag=AF] as @e[type=minecraft:snowball,tag=T_GA,distance=..100] if entity @s at @s run playsound minecraft:block.anvil.land player @a[team=CT,tag=AF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:snowball,tag=T_GA] at @s run title @a[team=CT,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！

#空对地导弹
execute at @a[team=T,tag=GF] as @e[type=minecraft:snowball,tag=CT_AG,distance=..100] if entity @s at @s run playsound minecraft:block.anvil.land player @a[team=T,tag=GF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:snowball,tag=CT_AG] at @s run title @a[team=T,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！
execute at @a[team=CT,tag=GF] as @e[type=minecraft:snowball,tag=T_AG,distance=..100] if entity @s at @s run playsound minecraft:block.anvil.land player @a[team=CT,tag=GF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:snowball,tag=T_AG] at @s run title @a[team=CT,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！
