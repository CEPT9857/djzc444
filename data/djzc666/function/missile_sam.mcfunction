#SAM代码是地对空导弹的通讯简码

#生成CT的地对空导弹
execute as @a[advancements={djzc666:tool/missile_sam=true}] at @s run summon minecraft:snowball ~ ~1 ~ {Tags:["CT_GA","GF_AA","AA","missile"],PortalCooldown:120,NoGravity:true}
#登记发射者
execute as @a[team=CT,advancements={djzc666:tool/missile_sam=true}] at @s run data modify entity @e[type=minecraft:snowball,tag=CT_GA,nbt={PortalCooldown:120},limit=1] Owner set from entity @p[team=CT,advancements={djzc666:tool/missile_sam=true}] UUID

#生成T的地对空导弹
execute as @a[team=T,advancements={djzc666:tool/missile_sam=true}] at @s run summon minecraft:snowball ~ ~1 ~ {Tags:["T_GA","GF_AA","AA","missile"],PortalCooldown:120,NoGravity:true}
#登记发射者
execute as @a[team=T,advancements={djzc666:tool/missile_sam=true}] at @s run data modify entity @e[type=minecraft:snowball,tag=T_GA,nbt={PortalCooldown:120},limit=1] Owner set from entity @p[team=T,advancements={djzc666:tool/missile_sam=true}] UUID

advancement revoke @s only djzc666:tool/missile_sam
advancement grant @s only djzc444:fight/wea_ga