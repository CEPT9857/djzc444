#Fox代码是北约飞行员在发射或模拟发射空对空武器或者其它作战行为时使用的无线电通讯简码
#想“发射”的时候第一时间想到的是这个词，懒得改了

#生成CT的空对空导弹
execute as @a[advancements={djzc666:tool/missile_fox=true}] at @s run summon minecraft:snowball ~ ~1 ~ {Tags:["CT_AA","AA","missile"],PortalCooldown:60,NoGravity:true}
#登记发射者
execute as @a[team=CT,advancements={djzc666:tool/missile_fox=true}] at @s run data modify entity @e[type=minecraft:snowball,tag=CT_AA,nbt={PortalCooldown:60},limit=1] Owner set from entity @p[team=CT,advancements={djzc666:tool/missile_fox=true}] UUID

#生成T的空对空导弹
execute as @a[team=T,advancements={djzc666:tool/missile_fox=true}] at @s run summon minecraft:snowball ~ ~1 ~ {Tags:["T_AA","AA","missile"],PortalCooldown:60,NoGravity:true}
#登记发射者
execute as @a[team=T,advancements={djzc666:tool/missile_fox=true}] at @s run data modify entity @e[type=minecraft:snowball,tag=T_AA,nbt={PortalCooldown:60},limit=1] Owner set from entity @p[team=T,advancements={djzc666:tool/missile_fox=true}] UUID

#成就相关
advancement revoke @s only djzc666:tool/missile_fox
advancement grant @s only djzc444:fight/wea_aa