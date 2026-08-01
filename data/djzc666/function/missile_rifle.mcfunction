#Rifle是美帝陆军以及海军陆战队FM 101-5-1/MCRP 5-2A标准中，在发射或模拟发射空对地武器或者其它作战行为时使用的无线电通讯简码

#生成CT的空对地导弹
execute as @a[team=CT,advancements={djzc666:tool/missile_rifle=true}] at @s run summon minecraft:snowball ~ ~1 ~ {Tags:["CT_AG","AG","missile"],PortalCooldown:40,NoGravity:true}
#登记发射者
execute as @a[team=CT,advancements={djzc666:tool/missile_rifle=true}] at @s run data modify entity @e[type=minecraft:snowball,tag=CT_AG,nbt={PortalCooldown:40},limit=1] Owner set from entity @p[team=CT,advancements={djzc666:tool/missile_rifle=true}] UUID

#生成T的空对地导弹
execute as @a[team=T,advancements={djzc666:tool/missile_rifle=true}] at @s run summon minecraft:snowball ~ ~1 ~ {Tags:["T_AG","AG","missile"],PortalCooldown:40,NoGravity:true}
#登记发射者
execute as @a[team=T,advancements={djzc666:tool/missile_rifle=true}] at @s run data modify entity @e[type=minecraft:snowball,tag=T_AG,nbt={PortalCooldown:40},limit=1] Owner set from entity @p[team=T,advancements={djzc666:tool/missile_rifle=true}] UUID

#成就相关
advancement revoke @s only djzc666:tool/missile_rifle
advancement grant @s only djzc444:fight/wea_ag