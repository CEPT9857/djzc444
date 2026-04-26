#空对空导弹
execute as @e[type=minecraft:firework_rocket,tag=CT_AA] at @s run playsound minecraft:block.anvil.land player @a[team=T,tag=AF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:firework_rocket,tag=CT_AA] at @s run title @a[team=T,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！
execute as @e[type=minecraft:firework_rocket,tag=T_AA] at @s run playsound minecraft:block.anvil.land player @a[team=CT,tag=AF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:firework_rocket,tag=T_AA] at @s run title @a[team=CT,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！

#地对空导弹
execute as @e[type=minecraft:firework_rocket,tag=CT_GA] at @s run playsound minecraft:block.anvil.land player @a[team=T,tag=AF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:firework_rocket,tag=CT_GA] at @s run title @a[team=T,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！
execute as @e[type=minecraft:firework_rocket,tag=T_GA] at @s run playsound minecraft:block.anvil.land player @a[team=CT,tag=AF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:firework_rocket,tag=T_GA] at @s run title @a[team=CT,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！

#空对地导弹
execute as @e[type=minecraft:firework_rocket,tag=CT_AG] at @s run playsound minecraft:block.anvil.land player @a[team=T,tag=GF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:firework_rocket,tag=CT_AG] at @s run title @a[team=T,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！
execute as @e[type=minecraft:firework_rocket,tag=T_AG] at @s run playsound minecraft:block.anvil.land player @a[team=CT,tag=GF,distance=..100] ~ ~ ~ 10
execute as @e[type=minecraft:firework_rocket,tag=T_AG] at @s run title @a[team=CT,tag=AF,distance=..100] actionbar [{translate:"djzc.msg.missile_enemy","fallback":"敌导弹","color":"red"}]
#敌导弹！